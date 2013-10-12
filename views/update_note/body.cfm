<b>THIS IS THE BODY</b><br>
<a href="?action=edit">create</a><br><br><br>
	<br><br>
	<form method="post" action="<cfoutput>#application.webroot#</cfoutput>?action=save">
		<input type="text" name="title" value="<cfoutput>#data.title#</cfoutput>"/><br>
		<input type="text" name="noteId" value="<cfoutput>#data.noteId#</cfoutput>"/><br>
		<input type="text" name="body" value="<cfoutput>#data.body#</cfoutput>"/><br>
		<input type="text" name="category" value="<cfoutput>#data.categoryId#</cfoutput>"/><br>
		<input type="submit" href="?action=save&id=<cfoutput>#data.noteId#</cfoutput>" value="save" /><br>
		<input type="submit" href="?action=delete&id=<cfoutput>#data.noteId#</cfoutput>" value="delete"/><br>
	</form>
	<br><br><br><br>