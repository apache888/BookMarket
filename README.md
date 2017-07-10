# BookMarket

Emulation of online bookshop.

Uses Hibernate, Spring(MVC, Data)

Download war/BookMarket.war and deploy it on web server.

Create in MYSQL Server database "bookmarket" and execute db/mysql/*.sql

Or select HSQL Settings in database.properties. Uncomment suitable prop in spring/spring-config.xml  
<property name="jpaProperties"> <prop key="hibernate.dialect">org.hibernate.dialect.???</prop>.  
Uncomment <jdbc:initialize-database>


