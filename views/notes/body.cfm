<b>THIS IS THE BODY</b><br>
<a href="?action=create">create</a><br><br><br>

<!--- <cfdump var="#data#"> --->
<cfloop query="data">
	<br><br>
	<cfoutput>#title#</cfoutput><br>
	<cfoutput>#noteId#</cfoutput><br>
	<cfoutput>#body#</cfoutput><br>
	<cfoutput>#categoryId#</cfoutput><br>
	<a href="?action=edit&id=<cfoutput>#noteId#</cfoutput>">edit</a><br>
	<a href="?action=delete&id=<cfoutput>#noteId#</cfoutput>">delete</a><br>
	<br><br><br><br>
</cfloop>