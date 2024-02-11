$ openssl x509 -outform der -in itunes.apple.com.crt -out GlobalSignRootCA.der

$ keytool -import -alias GlobalSignRootCA -keystore GlobalSignRootCA.jks -file GlobalSignRootCA.der

System.setProperty("javax.net.ssl.trustStore", "GlobalSignRootCA.jks");
System.setProperty("javax.net.ssl.trustStorePassword","trustStorePassword");
System.setProperty("javax.net.ssl.keyStoreType", "jks");
