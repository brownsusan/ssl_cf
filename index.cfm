
<!--- CAPTCHA --->


<! --- CRUD --->
<cfset views = createObject("component", "models/views")>
<cfset notes = createObject("component", "models/notes")>
<cfset views.getView("../views/header.cfm")>
<cfset application.webroot = "/ssl/">

<cfif not isdefined('url.action')>

<!--- 	<cfset data = notes.getAll()> --->
<!--- 	<cfset views.getView("../views/notes/body.cfm", data)> --->

<cfelse>

	<cfif url.action is "delete">
		<cfset notes.deleteNote(url.id)>
		<cflocation url="#application.webroot#">
		
	<cfelseif url.action is "edit">
		<cfset note = notes.getNote(url.id)>
		<cfset views.getView("../views/update_note/body.cfm", note)>
		
	<cfelseif url.action is "save">
		<cfset notes.updateNote(form.title, form.body, form.category, form.noteId)>
		<cflocation url="#application.webroot#">
		
	<cfelseif url.action is "create">
		<cfset views.getView("../views/create_note/body.cfm")>
		
	<cfelseif url.action is "submit">
		<cfset note = notes.createNote(form.title, form.body, form.category)>
		<cflocation url="#application.webroot#">
		
	<cfelseif url.action is "file_upload_page">
		<cfset views.getView("../views/uploadForm.cfm")>
	
	<cfelseif url.action is "file_upload_action">
		<cfset fileUpload = createObject("component", "models/file")>
		<cfset fileUpload.up(form.file)>
		
	<cfelseif url.action is "captcha">
		<cfset captcha = createObject("component", "models/captcha")>
		<cfset msg = captcha.msg()>
		<cfset captcha.cap(msg)>
		
	<cfelseif url.action is "image_resize">
		<cfimage source="/Applications/railo-express-4.0.4.001-macosx/webapps/www/SSL/uploads/test.jpg" action="resize" width="500" 
    height="500" destination="/Applications/railo-express-4.0.4.001-macosx/webapps/www/SSL/uploads/test4.jpg"> 
		
	</cfif>
	
</cfif>

<cfset views.getView("../views/footer.cfm")>