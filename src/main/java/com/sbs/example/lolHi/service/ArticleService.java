package com.sbs.example.lolHi.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sbs.example.lolHi.dao.ArticleDao;
import com.sbs.example.lolHi.dto.Article;

@Service
public class ArticleService {
	@Autowired
	private ArticleDao articledao;

	public List<Article> getArticles() {

		return articledao.getArticles();
	}

	public Article getArticleById(int id) {

		return articledao.getArticleById(id);
	}

	public void deleteArticleById(int id) {
		articledao.deleteArticleById(id);

	}

	public void modifyArticle(int id, String title, String body) {
		articledao.modifyArticle(id, title, body);

	}

}
