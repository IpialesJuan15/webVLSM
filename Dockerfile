# Usa una imagen base de Tomcat
FROM tomcat:9.0-jdk11

# Establece el directorio de trabajo en el contenedor
WORKDIR /usr/local/tomcat/webapps/

# Copia tu archivo .war al directorio ROOT de Tomcat
COPY VLSM_-_Java_Web.war ./ROOT.war

# Expone el puerto 8080 (puerto predeterminado de Tomcat)
EXPOSE 8080

# Inicia Tomcat
CMD ["catalina.sh", "run"]
