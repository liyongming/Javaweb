##Java Web

---
WEB-ROOT   :   根目录，一般虚拟目录会直接在此目录中设置
	| ---  WEB-INF  整个WEB中最安全的目录，无法直接访问，若访问，需要在web.xml中配置：见图
			|-- classes  保存所有的*.class文件	所有的class都要放在 包中
			|-- lib           存放第三方的jar文件
			|-- web.xml  WEB的部署描述符    
	|---   css     存放所有的*.css文件
	|---   js        存放所有的*.js文件
	|---   jsp      存放所有的jsp文件
	|---   index.htm, index.jsp       欢迎页面
---