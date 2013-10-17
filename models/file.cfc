<b>Hello</b>
<cfcomponent>
	<cffunction name="up" returnType="void" access="public">
		<cfargument name="upfile" type="any">
		<cffile action="upload" fileField="#upfile#" destination="/Applications/railo-express-4.0.4.001-macosx/webapps/www/SSL/uploads">
	</cffunction>
</cfcomponent>