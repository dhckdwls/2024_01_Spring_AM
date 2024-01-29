package com.example.demo.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.vo.Article;

@Controller
public class UsrArticleController {
	int lastArticleId;
	List<Article> articles;

	@RequestMapping("/usr/article/doDelete")
	@ResponseBody
	public String doDelete(int id) {
		Article foundArticle = null;
		for (Article article : articles) {
			if (article.getId() == id) {
				foundArticle = article;
				break;
			}
		}
		if (foundArticle != null) {
			articles.remove(foundArticle);
			return String.format("%d 번 게시글이 삭제되었습니다", id);
		}
		return String.format("%d번 게시물은 없습니다", id);
	}

	@RequestMapping("/usr/article/doModify")
	@ResponseBody
	public Object doModify(int id, String title, String body) {
		Article foundArticle = null;
		for (Article article : articles) {
			if (article.getId() == id) {
				foundArticle = article;
				break;
			}
		}
		
		if (foundArticle != null) {
			foundArticle.setTitle(title);
			foundArticle.setBody(body);
			foundArticle.toString();
			return String.format(foundArticle + "\n%d번 게시물이 수정되었습니다", id);
		}
		return "그런게시물은 없습니다";

	}

	public UsrArticleController() {
		lastArticleId = 10;
		articles = new ArrayList<>();
		for (int i = 1; i <= 10; i++) {
			String title = "제목" + i;
			String body = "내용" + i;
			articles.add(new Article(i, title, body));
		}
	}

	@RequestMapping("/usr/article/doAdd")
	@ResponseBody
	public Article doAdd(String title, String body) {
		int id = lastArticleId + 1;
		Article article = new Article(id, title, body);
		articles.add(article);
		lastArticleId++;

		return article;
	}

	@RequestMapping("/usr/article/getArticles")
	@ResponseBody
	public List<Article> getArticles() {
		return articles;
	}
}