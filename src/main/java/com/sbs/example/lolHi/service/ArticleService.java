package com.sbs.example.lolHi.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sbs.example.lolHi.dao.ArticleDao;
import com.sbs.example.lolHi.dto.Article;
import com.sbs.example.lolHi.util.Util;

@Service
public class ArticleService {
	@Autowired
	private ArticleDao articledao;

	public List<Article> getArticles(Map<String, Object> param) {
		int page = Util.getAsInt(param.get("page"), 1);

		int itemsCountInAPage = Util.getAsInt(param.get("itemsCountInAPage"), 10);

		if (itemsCountInAPage > 100) {
			itemsCountInAPage = 100;
		} else if (itemsCountInAPage < 1) {
			itemsCountInAPage = 1;
		}

		int limitFrom = (page - 1) * itemsCountInAPage;
		int limitTake = itemsCountInAPage;

		param.put("limitFrom", limitFrom);
		param.put("limitTake", limitTake);

		return articledao.getArticles(param);
		

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

	public int writeArticle(Map<String, Object> param) {
		articledao.writeArticle(param);

		int id = Util.getAsInt(param.get("id"));

		return id;

	}

}
