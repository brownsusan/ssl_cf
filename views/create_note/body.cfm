<b>THIS IS THE BODY</b><br>
<a href="?action=create">create</a><br><br><br>
	<br><br>
	<form method="post" action="<cfoutput>#application.webroot#</cfoutput>?action=submit">
		<input type="text" name="title" placeholder="Note Title" /><br>
		<input type="text" name="body" placeholder="Enter note here..." /><br>
		<input type="text" name="category" placeholder="Note Category" /><br>
		<input type="submit" href="?action=submit" value="save" /><br>
	</form>
	<br><br><br><br>