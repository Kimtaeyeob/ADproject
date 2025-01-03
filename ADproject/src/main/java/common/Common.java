package common;

public class Common {
	
	public static class main{
		public static final String VIEW_PATH = "/WEB-INF/views/main/";
	}
	
	public static class login{
		public static final String VIEW_PATH = "/WEB-INF/views/login/";
	}
	
	public static class academy_detail{
		public static final String VIEW_PATH = "/WEB-INF/views/academy_detail/";
	}
	
	//일반게시판
		public static class Board{
			
			public final static String VIEW_PATH = "/WEB-INF/views/board/";
			
			//한 페이지에 보여줄 게시글 수
			public final static int BLOCKLIST = 10;

			//하단 페이지 메뉴의 수
			//<- 1 2 3 ->
			public final static int BLOCKPAGE = 3;
		}

		//댓글 페이징
		public static class Comment{
			
			public final static String VIEW_PATH = "/WEB-INF/views/comment/";
			
			//한 페이지에 보여줄 게시글 수
			public final static int BLOCKLIST = 5;

			//하단 페이지 메뉴의 수
			//<- 1 2 3 ->
			public final static int BLOCKPAGE = 3;
		}

	}


