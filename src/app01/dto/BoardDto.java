package app01.dto;

import java.time.LocalDateTime;

public class BoardDto {
	private int id;
	private String title;
	private String body;
	private LocalDateTime inserted;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public LocalDateTime getInserted() {
		return inserted;
	}

	public void setInserted(LocalDateTime inserted) {
		this.inserted = inserted;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getBody() {
		return body;
	}

	public void setBody(String body) {
		this.body = body;
	}

}
