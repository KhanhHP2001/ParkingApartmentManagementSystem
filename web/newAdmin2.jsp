<%@page import="java.util.List"%>
<%@page import="news.NewsDTO"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <link rel="stylesheet" href="NewsAdmin/cssSlide/style.css" />
		<link rel="stylesheet" href="NewsAdmin/cssSlide/nivo-slider.css" type="text/css" media="screen" />
		<link rel="stylesheet" href="NewsAdmin/cssSlide/default/default.css" type="text/css" media="screen" />
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
		<script src="jquery.nivo.slider.pack.js" type="text/javascript"></script>
        <!--[if lt IE 9]>
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
        <title>Source X SRT</title>
    </head>
	<body id="blog">
		<div id="wrapper">
                     <h1>TRANG COI NEWS !</h1>
        <a href="newsADD.jsp">ADD NEWS</a></br>
        <%

            String searchNews = request.getParameter("Search News");
            if (searchNews == null) {
                searchNews = "";
            }
        %>
         <form action="MainController" >
            Search <input type="text" name="Search News"  value="<%= searchNews%>" placeholder="Search By Title"/>
            <input type="submit" name="action"  value="Search News"/>
        </form>
			<!--__--__--__--__--__--  L O G O  &   N A V    B A R --__--___--__--__--__-->
			<header>
				<div id="logo">
				<h1>Source X <span id="ii">II</span>  <span id="srt">SRT</span></h1>
				<div id="tagline">
					<h2>Just another Geeksband Template !</h2>
				</div>
				</div>
				
			</header>
			
			<!--__--__--__--__--  M A I N   C O N T E N T  --__--__--__--___--__--__-->
			<section>
			
				<!--__--__--__-- A R T I C L E S --__--__--__--__-->
				<div id="articles">
                                     <%  List<NewsDTO> list = (List<NewsDTO>) session.getAttribute("LIST_NEWS");
            if (list != null) {
                if (!list.isEmpty()) {
        %>
        <table border="1">
                                    <%
                    int count = 1;
                    for (NewsDTO news : list) {
                %>
                <form action="MainController">
                                        <article>
                                            <td><%=count++%></td>
                                                <%=news.getIdNews()%>
						<h1><a href="singlepost.html">Suspendisse Enim Elit Tempor Acer</a></h1>
						<h2>Posted By: <a href="#">Admin</a> On January 29th, 2013 In <a href="#">Freebies</a>.</h2>
						<img src="images/a1.jpg" alt="" />
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tempor, tortor at vulputate blandit, magna risus posuere turpis, nec cursus ipsum arcu nec felis. Mauris sed lectus dui. Suspendisse enim elit, tempor ac ullamcorper et, eleifend quis sem. Sed euismod sagittis ligula, a imperdiet sapien molestie nec. Curabitur ut eros a justo fermentum vulputate ac sit amet metus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tempor, tortor at vulputate blandit, magna risus posuere turpis, nec cursus ipsum arcu nec felis. Mauris sed lectus dui. <a class="continue" href="singlepost.html">Continue Reading &rarr;</a></p>
					</article>
					<article>
						<h1><a href="singlepost.html">Mauris Sed Lectus Duieleifend Quis Sem</a></h1>
						<h2>Posted By: <a href="#">Admin</a> On January 29th, 2013 In <a href="#">Tutorials</a>.</h2>
						<img src="images/a2.jpg" alt="" />
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tempor, tortor at vulputate blandit, magna risus posuere turpis, nec cursus ipsum arcu nec felis. Mauris sed lectus dui. Suspendisse enim elit, tempor ac ullamcorper et, eleifend quis sem. Sed euismod sagittis ligula, a imperdiet sapien molestie nec. Curabitur ut eros a justo fermentum vulputate ac sit amet metus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tempor, tortor at vulputate blandit, magna risus posuere turpis, nec cursus ipsum arcu nec felis. Mauris sed lectus dui. Eleifend quis sem. Sed euismod sagittis ligula, a imperdiet sapien molestie nec. Curabitur ut eros a justo fermentum vulputate ac sit amet metus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tempor, tortor at vulputate blandit, magna risus posuere turpis, nec cursus ipsum arcu nec felis. Mauris sed lectus dui. <a class="continue" href="singlepost.html">Continue Reading &rarr;</a></p>
					</article>
					<article>
						<h1><a href="singlepost.html">Mauris Sed Lectus Duieleifend Quis Sem</a></h1>
						<h2>Posted By: <a href="#">Admin</a> On January 29th, 2013 In <a href="#">Tutorials</a>.</h2>
						<img src="images/a3.jpg" alt="" />
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tempor, tortor at vulputate blandit, magna risus posuere turpis, nec cursus ipsum arcu nec felis. Mauris sed lectus dui. Suspendisse enim elit, tempor ac ullamcorper et, eleifend quis sem. Sed euismod sagittis ligula, a imperdiet sapien molestie nec. Curabitur ut eros a justo fermentum vulputate ac sit amet metus. Lorem ipsum dolor sit amet. <a class="continue" href="singlepost.html">Continue Reading &rarr;</a></p>
					</article>
					<article>
						<h1><a href="singlepost.html">Mauris Sed Lectus Duieleifend Quis Sem</a></h1>
						<h2>Posted By: <a href="#">Admin</a> On January 29th, 2013 In <a href="#">Photography</a>.</h2>
						<img src="images/a4.jpg" alt="" />
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tempor, tortor at vulputate blandit, magna risus posuere turpis, nec cursus ipsum arcu nec felis. Mauris sed lectus dui. Suspendisse enim elit, tempor ac ullamcorper et, eleifend quis sem. Sed euismod sagittis ligula, a imperdiet sapien molestie nec. Curabitur ut eros a justo fermentum vulputate ac sit amet metus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tempor, tortor at vulputate blandit, magna risus posuere turpis, nec cursus ipsum arcu nec felis. Mauris sed lectus dui. Eleifend quis sem. <a class="continue" href="singlepost.html">Continue Reading &rarr;</a></p>
					</article>
                                                </form>
                                           <%
                }
            %>              
                                        </table>
                                         <%
            }
        }
    %> 
				</div>
				<!--__--__--__--  S I D E B A R --__--__--__--__-->
				<div id="sidebar">
					<aside>
						<h1>Recent Posts</h1>
						<ul>
							<li><a href="#">Suspendisse Enim Elit Tempor Acer</a></li>
							<li><a href="#">Mauris Sed Lectus Duieleifend Quis Sem</a></li>
							<li><a href="#">Suspendisse Enim Elit Tempor Acer Fermentum Vulputate</a></li>
							<li><a href="#">Mauris Sed Lectus Duieleifend Quis Sem</a></li>						
						</ul>
					</aside>
					<aside>
						<div id="cat">
							<h1>Categories</h1>
							<ul>
								<li><a href="#">Webdesign</a>
								<li><a href="#">Javascript</a>
								<li><a href="#">Tutorials</a>
								<li><a href="#">Freebies</a>
								<li><a href="#">Wordpress</a>
								<li><a href="#">HTML/CSS</a>
							</ul>
						</div>
						<div id="archives">
							<h1>Archives</h1>
							<ul>
								<li><a href="#">November 2012</a>
								<li><a href="#">December 2012</a>
								<li><a href="#">January 2013</a>
							</ul>
						</div>
					</aside>
				</div>
			</section>
			<!--__--__--__--__--  T H E    F O O T E R --__--__--__--___--__--__--__-->
			<footer>
				<p>Copyright &copy 2013 Source X by Youssef Nassim and Zakariya Lhamri, design from <a href="http://geeksband.com">Geeksband.com</a> All Rights Reserved.</p>
			</footer>
		</div>			
	</body>
</html>
		
		
			
    
    