package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
//import java.util.List;
import java.util.List;

import com.model.Items;

public class ItemDAO {
	Connection connection = null;
	public boolean save(Items item) throws ClassNotFoundException, SQLException {
		connection = ConnectionManager.getConnection();
		String query = "insert into items(name, type, quantity, price) values(?,?,?,?)";
		PreparedStatement ps = connection.prepareStatement(query);
		ps.setString(1, item.getName());
		ps.setString(2, item.getType());
		ps.setString(3, item.getQuantity());
		ps.setString(4, item.getPrice());
		int count = ps.executeUpdate();
		
		if(count != 0 ) {
			return true;
		}
		else {
			return false;
		}	
	}

	public void commit() throws SQLException {
	connection.commit();
	connection.close();
	
	}
	public void rollback() throws SQLException {
	connection.rollback();
	connection.close();
	
	}

	public List<Items> findAll() throws ClassNotFoundException, SQLException {
		Connection connection = ConnectionManager.getConnection();
		connection.setAutoCommit(true);
		String query = "select * from items";
		PreparedStatement ps = connection.prepareStatement(query);
		ps.executeQuery();
		ResultSet set = ps.executeQuery();
		List<Items> list = new ArrayList<Items>();
		while(set.next()) {
			Items item = new Items();
			item.setId(set.getInt(1));
			item.setName(set.getString(2));
			item.setType(set.getString(3));
			item.setQuantity(set.getString(4));
			item.setPrice(set.getString(5));
	
			list.add(item);
			
		}
		if(connection != null) {
			connection.close();
		}
		return list;
	}
	public boolean edit(Items list) throws ClassNotFoundException, SQLException {
		connection  = ConnectionManager.getConnection();
		String query = "update items set name = ?,type=?,quantity = ?,price = ? where id = ? ";
		PreparedStatement ps = connection.prepareStatement(query);
		ps.setString(1, list.getName());
		ps.setString(2, list.getType());
		ps.setString(3, list.getQuantity());
		ps.setString(4, list.getPrice());
			ps.setInt(5, list.getId());
		int count = ps.executeUpdate();
		if(count != 0) {
			return true;
		}else {
			return false;
		}
		
	}


	public boolean deleteById(int id) throws ClassNotFoundException, SQLException {
		connection = ConnectionManager.getConnection();
		String query = "delete from items where id = ?";
		PreparedStatement ps = connection.prepareStatement(query);
		ps.setInt(1, id);
		int count = ps.executeUpdate();
		if(count != 0 ) {
			return true;
		}else {
		return false;
		}
	}

	public Items findById(int id) throws SQLException, ClassNotFoundException {
		connection  = ConnectionManager.getConnection();
		String query = "select * from items where id = ?";
		PreparedStatement ps = connection.prepareStatement(query);
		ps.setInt(1, id);
		ResultSet rs = ps.executeQuery();
		Items item = new Items();
		if(rs.next()) {
			item.setId(rs.getInt("id"));
			item.setName(rs.getString("name"));
			item.setType(rs.getString("type"));
			item.setQuantity(rs.getString("quantity"));
			item.setPrice(rs.getString("price"));
			
		}
		if(connection != null)
			connection.close();
		return item;
	}
	
}
