#The Visitor

##One liners:
##1. a website where New Yorkers can post true stories about living in new york city.

##2. NPR's The Moth for writers

## 3. Find out what it's like to live in New York City from the people who do

This is site was thought of a few years ago when a friend and I realized that, even though everyone we knew had as least a half dozen great new york stories, there was not a website devoted to sharing those stories with the world.

My aim for the site was to implement a clean, unique visual design that would stand out and draw a reader in. I wanted the site to be easy on the eyes (reading wise) so readers would feel comfortable spending their time wrapped up in long, evolving narratives. The end goal is to attract enough contributors that, with a small editing team, we can hand pick the best weekly stories, edit them with the writer, give each a unique design, and publish to (hopefully) an dedicated audience.

I was able to hit most of the goals I set out design wise. I learned that CSS takes waaaaaaay longer that you ever anticipate. I also learned a ton about how to use bootstrap (which is amazing and so fast once you know what it can do and rules you should follow to use it right). I learned a lot about testing a design with developer tools to fine tune layout. I also learned that a few small style choices (hand made logo, clean double lines under headers, subtle fonts, and light shadows under divs) when put together and done consistently throughout a design make a huge difference in the final layout. All the small parts fit together to make a much larger whole.  


----------

## Problems I ran into ##

 -  I couldn't work out how to get my body tag to display a different background on different pages. I believe this had to do with scoping, seeing as my body tag is outside of my yield tag. With more time and some JavaScript, I fairly sure I could fix this.
 - My functionality if solid, though the site doesn't do anything too special. It's purpose is really more visual and user experience driven. I would like to add more features though (like the ability to favorite a story, search stories by author, title, borough, & tag, upvote stories, and for an admin to edit and delete stories.


## Gems ##
No special gems outside of what we've been using in class. I used httparty to grap json info from the nyc open data api. And I used rspec for testing.

## How To Use ##

As a user on the site, you can read various stories that take place throughout the five boroughs in NYC. You can also submit a story, which will appear on the to of the Stories page. Along with a story, users should submit an image, which is displayed along with their story, and a zipcode where the story takes place. This zipcode updates a table that appears below each story, displaying demographics information about a the neighborhood where that story takes place.

## Screen Shots ##

![image alt][1]


![image alt][2]





  [1]: http://brookyn-visitor.herokuapp.com/
  [2]: http://brookyn-visitor.herokuapp.com/stories/new


    <% @stories.each do |story| %>
		
		<div class="relative clearfix story_preview_div col-xs-12 col-sm-12 col-md-12 col-lg-12">

			<!-- Gives the link an href equal to /stories/<the id of the current story being displayed> . This id is fetched from our databse using Active Record  -->
			<a href="/stories/<%= story.id%>"> 
				<img class="story_preview_pic inline float_left" src="<%= story.story_image %>" alt="story_picture">
				<h4 class="float_left col-md-9 col-lg-9"> <%= story.title.upcase %></h4>
				<br/>

				<!-- Displayes the name of the person who wrote the current story. .name is an ActiveRecord method that reaches into our database and retrieves whatever value is stored in this story's name column.  -->
				<h5 class="float_left col-md-9 col-lg-9">BY <%= story.name.upcase %></h5>
			</a>
		</div>
	<% end %>	
</div>

    <div class="container">
		
		<header class="col-xs-4 col-sm-4 col-md-4 col-lg-4 header background_solid_darker rounded_border shadow">
			<a href="/">
				<div class="logo col-lg offset-1 col-lg-10 col-md-12 col-sm-12 col-xs-12 clearfix"></div></a>
				<h3 class="slogan light_title_font">a blog about town</h3>
			
			<nav>
				<ul>
					<li> <a href="/about">About</a></li>
					<li> <a href="/stories">Stories</a> </li>
					<li> <a href="/stories/new">Share Your Story</a> </li>
					<li> <a href="/contact">Contact</a></li>
				</ul>
			</nav>
		</header>
		

		<p class="notice hidden"><%= notice %></p>
	    <p class="alert hidden"><%= alert %></p>
	    
		<%= yield %>

	</div>

    <!-- Cycle through every neighborhood in the data_array -->
						<% data_array.each do |array| %>

							<!-- If the story's zipcode (submitted by the user) is included somewhere in that array... -->
							<% if array.include?(@story.zipcode.to_s) %>

								<!-- ...set zipcode to the array index of that zipcode. (We add to_s to @story.zipcode because the data_array storys all of it's data as strings, even zipcodes). -->
								<% zipcode = array.index(@story.zipcode.to_s) %>

								<!-- ...and set current_neighborhood to the index of the array this zipcode is located within. The minus 2 is to account for some odd indexing inside the API. -->
								<% current_neighborhood = array[0] - 2 %>
							<% end %>
						<% end %>

					<td><%= (@nyc_data["data"][current_neighborhood][zipcode]) %></td>

					<td>% <%= (@nyc_data["data"][current_neighborhood][21]).to_f * 100 %></td>
					<td>% <%= (@nyc_data["data"][current_neighborhood][25]).to_f


    .two_em_padding_bottom {
	padding-bottom: 2em;
}

.bottom_double_border {
	border-style: none none double none;
}

.point_two_em_padding_bottom {
	padding-bottom: .2em;
}

.top_margin {
	margin-top: 2em;
}

.rounded_border {
	border-radius: .5em;
}

.shadow {
	-moz-box-shadow: 0 0 30px 5px #999;
	-webkit-box-shadow: 0 0 30px 5px #999;
	box-shadow: 0 0 30px 5px #999;
}
