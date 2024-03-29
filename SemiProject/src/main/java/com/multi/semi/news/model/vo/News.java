package com.multi.semi.news.model.vo;
import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class News {
	private int nid;
	private String title;
	private String originallink;
	private String link;
	private String description;
	private Date pubDate; // "EEE, d MMM yyyy HH:mm:ss Z"
}
