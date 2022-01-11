package com.Spring.Myapp.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.transaction.annotation.Transactional;

import com.Spring.Myapp.model.Hello;

//import org.springframework.jdbc.core.Jdbctemplate;

@Configuration
@PropertySource("/resources/application.properties")
@Transactional
public class HomeDao {
	JdbcTemplate template;

	@Autowired
	private Environment env;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	DataSource ds;

	public DataSource getDataSource() {
		return this.ds;
	}

	public void setDataSource(DataSource ds) {
		this.ds = ds;
	}

	public Hello getEmpById(int empID) {
		System.out.println("inside getEmpById");
		String sql = "select * from student where student_no=?";
		return template.queryForObject(sql, new Object[] { empID }, new BeanPropertyRowMapper<Hello>(Hello.class));
	}


	public int update(Hello p) {
		String sql = "update student set student_name='" + p.getStudent_name() + "',student_dob='" + p.getStudent_dob()+ "',student_doj='" + p.getStudent_doj()
				+ "' where student_no='" + p.getStudent_no() + "'";
		System.out.println("update" + sql);
		return template.update(sql);
	}

	public int delete(int empID) {
		String sql = "delete from student where student_no=" + empID + "";
		return template.update(sql);
	}

	public List<Hello> getEmployees() {
		return template.query("select * from student", new RowMapper<Hello>() {
			public Hello mapRow(ResultSet rs, int row) throws SQLException {
				// System.out.println("inside viewemp dAO");
				Hello e = new Hello();
				e.setStudent_no(rs.getInt(1));
				e.setStudent_name(rs.getString(2));
				e.setStudent_dob(rs.getDate(3));
				e.setStudent_doj(rs.getDate(4));
				return e;
			}

		});
	}

	public int save(Hello p) {
		String sql = "insert into student(student_no,student_name,student_dob,student_doj) values('" + p.getStudent_no() + "','" + p.getStudent_name()+ "','" + p.getStudent_dob()
				+ "','" + p.getStudent_doj() + "')";
		return template.update(sql);
	}

	public List<Hello> getEmployeesByPage(int pageid, int total) {
		String sql = "select * from student limit " + (pageid - 1) + "," + total;
		return template.query(sql, new RowMapper<Hello>() {
			public Hello mapRow(ResultSet rs, int row) throws SQLException {
				Hello e = new Hello();
				e.setStudent_no(rs.getInt(1));
				e.setStudent_name(rs.getString(2));
				e.setStudent_dob(rs.getDate(3));
				e.setStudent_doj(rs.getDate(4));
				return e;
			}
		});
	}
}

