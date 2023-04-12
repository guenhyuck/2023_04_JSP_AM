package com.KoreaIT.java.jam.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.KoreaIT.java.jam.config.Config;
import com.KoreaIT.java.jam.exception.SQLErrorException;
import com.KoreaIT.java.jam.util.DBUtil;
import com.KoreaIT.java.jam.util.SecSql;

@WebServlet("/article/doDelete")
public class ArticleDoDeleteServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html; charset=UTF-8");
		Connection conn = null;

		try {
			Class.forName(Config.getDBDriverClassName());
		} catch (ClassNotFoundException e) {
			System.out.println("예외 : 클래스가 없습니다");
			System.out.println("프로그램을 종료합니다");
			return;
		}

		try {
			conn = DriverManager.getConnection(Config.getDBUrl(), Config.getDBUser(), Config.getDBPassword());

			response.getWriter().append("Success!!!");

			HttpSession session = request.getSession();

			String memberId = request.getParameter("memberId");

			int loginedMemberId = (int) session.getAttribute("loginedMemberId");

			int id = Integer.parseInt(request.getParameter("id"));

			SecSql sql = SecSql.from("DELETE");
			sql.append("FROM article");
			sql.append("WHERE id = ? ;", id);

			int sessionMemberId = (int) session.getAttribute("loginedMemberId");

			if (sessionMemberId != id) {

				response.getWriter()
						.append(String.format("<script>alert('게시글에 대한 권한이 없습니다'); location.replace('list');</script>"));
				return;
			} else {

				DBUtil.delete(conn, sql);
				response.getWriter().append(
						String.format("<script>alert('%d번 글이 삭제되었습니다'); location.replace('list');</script>", id));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} catch (SQLErrorException e) {
			e.getOrigin().printStackTrace();
		} finally {
			try {
				if (conn != null && !conn.isClosed()) {
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}