<h1>Create a New Room in <%= @user.first_name %>'s House</h1>

<form action="/rooms/new" method="post">
	<p><label for="name">Room Name: </label><input type="text" name="room[name]" id="name" required></p>
	<p><label for="notes">Notes: </label><input type="text" name="room[notes]" id="notes"></p>
	
	<% 

	<input type="submit" name="Create Room" id="Create Room">
</form>
