<form action="<cfoutput>#application.webroot#</cfoutput>?action=file_upload_action" method="post" enctype="multipart/form-data" >
	<span>Upload a file</span>
	<input name="file" type="file"/>
	<input type="submit"/>
</form>