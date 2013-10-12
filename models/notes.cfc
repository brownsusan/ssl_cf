<cfcomponent>




	<cffunction name="createNote" returnType="void">
		<cfargument name="title" required="yes">
		<cfargument name="body" required="yes">
		<cfargument name="categoryId" required="yes">
		
		<cfquery datasource="ssl" name="notes">
			insert into note(
				title,
				body,
				categoryId
			)values(
				<cfqueryparam value="#title#">,
				<cfqueryparam value="#body#">,
				<cfqueryparam value="#categoryId#">
			)
		</cfquery>
	</cffunction>


	<cffunction name="getAll" returnType="query">
		<cfquery datasource="ssl" name="notes">
			select title, body, noteId, categoryId from note
			order by noteId desc
		</cfquery>
		<cfreturn notes>
	</cffunction>
	
	
	
	
	<cffunction name="getNote">
		<cfargument name="noteId" required="yes">
		<cfquery datasource="ssl" name="note">
			select title, body, noteId, categoryId from note 
			where noteId=<cfqueryparam value="#noteId#">
		</cfquery>
		<cfreturn note>
	</cffunction>
	
	
	
	
	<cffunction name="updateNote" returnType="void">
		<cfargument name="title" required="yes">
		<cfargument name="body" required="yes">
		<cfargument name="categoryId" required="yes">
		<cfargument name="noteId" required="yes">
		
		
		<cfquery datasource="ssl" name="note">
			update note set
				title = <cfqueryparam value="#title#">,
				body = <cfqueryparam value="#body#">,
				categoryId = <cfqueryparam value="#categoryId#">
			where noteId=<cfqueryparam value="#noteId#">
		</cfquery>
	</cffunction>
	
	
	<cffunction name="deleteNote" returnType="void">
		<cfargument name="noteId" required="yes">
		<cfquery datasource="ssl" name="notes">
			delete from note 
				where noteId=<cfqueryparam value="#noteId#">
		</cfquery>
	</cffunction>



</cfcomponent>