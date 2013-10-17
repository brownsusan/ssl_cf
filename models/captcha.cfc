<b>Hello</b>
<cfcomponent>


	<cffunction name="msg" returnType="string" output="false">
		<cfset var chars = "23456789ABCDEFGHJKMNPQRS">
		<cfset var length = randRange(4,7)>
		<cfset var result = "">
		<cfset var i = "">
		<cfset var char = "">
		<cfscript>
			for(i=1; i <= length; i++) {
				char = mid(chars, randRange(1, len(chars)),1);
				result&=char;
			}
		</cfscript>
       
		<cfreturn result>
		
	</cffunction>


	<cffunction name="cap" returnType="void" access="public">
		<cfargument name="msg" type="any">
		<cfimage action="captcha" fontSize="25" width="162" height="75" text="#msg#" fonts="Verdana,Arial,Courier New,Courier">
	</cffunction>
</cfcomponent>