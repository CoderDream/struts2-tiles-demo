

Struts 2 Tiles整合教程

http://blog.csdn.net/kimlunarove/article/details/5207259

----------

版本三：

- 增加登录功能
- 用户名密码，zhangsan/1234


struts.xml

    <struts>
    <package name="default" extends="struts-default">
        <action name="login" class="com.vaannila.action.LoginAction">
            <result name="success" type="redirectAction">
                <param name="namespace">/menu</param>
                <param name="actionName">welcomeLink</param>
            </result>
        </action>
    </package>

    <package name="menu" extends="struts-default" namespace="/menu">
        <result-types>
            <result-type name="tiles"
                class="org.apache.struts2.views.tiles.TilesResult" />
        </result-types>

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

    </package>
</struts>
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