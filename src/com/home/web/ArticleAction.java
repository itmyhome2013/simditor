package com.home.web;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.home.util.ConnectionManager;

/**
 * 用户信息
 * 
 */
public class ArticleAction {
	private List<Map<String, Object>> articleList = new ArrayList<Map<String, Object>>();
	private String title;   //标题
	private String content; //内容

	private int id;

	/**
	 * 查询
	 * @return
	 */
	public String queryAll() {
		Statement sta = null;
		ResultSet rs = null;
		try {
			Connection conn = ConnectionManager.getConnection();
			sta = conn.createStatement();
			String sql = "select * from article";
			rs = sta.executeQuery(sql);
			ResultSetMetaData md = rs.getMetaData(); // 获得结果集结构信息,元数据
			int columnCount = md.getColumnCount();
			while (rs.next()) {
				Map<String, Object> rowData = new HashMap<String, Object>();
				for (int i = 1; i <= columnCount; i++) {
					rowData.put(md.getColumnName(i), rs.getObject(i));
				}
				articleList.add(rowData);
			}
			ConnectionManager.closeAll(rs, sta, conn);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return "success";
	}

	/**
	 * 新增
	 * @return
	 */
	public String articleSave() {
		PreparedStatement sta = null;
		try {
			Connection conn = ConnectionManager.getConnection();
			sta = conn.prepareStatement("insert into article(title,content) values(?,?)");
			// ID自动增长
			sta.setString(1, title);
			sta.setString(2, content);
			sta.executeUpdate();

			queryAll(); //保存之后 进行查询 返回列表页
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return "success";
	}

	/**
	 * 查看
	 * @return
	 */
	public String articleView() {
		Statement sta = null;
		ResultSet rs = null;
		try {
			Connection conn = ConnectionManager.getConnection();
			sta = conn.createStatement();
			rs = sta.executeQuery("select id,title,content from article where id="
							+ id);
			while (rs.next()) {
				title = rs.getString(2);
				content = rs.getString(3);
			}
			ConnectionManager.closeAll(rs, sta, conn);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return "success";
	}

	public List<Map<String, Object>> getArticleList() {
		return articleList;
	}

	public void setArticleList(List<Map<String, Object>> articleList) {
		this.articleList = articleList;
	}


	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

}
