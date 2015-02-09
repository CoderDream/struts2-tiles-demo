

Struts 2 Tiles整合教程

http://blog.csdn.net/kimlunarove/article/details/5207259




----------

版本二：

struts.xml
        <action name="welcomeLink" class="com.vaannila.action.LinkAction"
            method="welcomeLink">
            <result name="welcome" type="tiles">welcome</result>
        </action>

        <action name="friendsLink" class="com.vaannila.action.LinkAction"
            method="friendsLink">
            <result name="friends" type="tiles">friends</result>
        </action>

        <action name="officeLink" class="com.vaannila.action.LinkAction"
            method="officeLink">
            <result name="office" type="tiles">office</result>
        </action>


----------

版本一：
struts.xml

    <action name="*Link" method="{1}" class="com.vaannila.action.LinkAction">
		<result name="welcome" type="tiles">welcome</result>
		<result name="friends" type="tiles">friends</result>
		<result name="office" type="tiles">office</result>
	</action>