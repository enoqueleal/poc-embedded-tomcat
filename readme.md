
# Embedded Tomcat Sample

The Tomcat Maven [Plugin](https://tomcat.apache.org/maven-plugin-2.0/index.html) provides goals to manipulate WAR projects within the Apache Tomcat servlet container.

## Installation

Use the package manager [maven](https://maven.apache.org/install.html) to install this sample.

```bash
./mvnw clean install
```

## Usage in local workstation

```bash
./mvnw clean install tomcat7:run

```

## Usage in docker container

```bash
docker build -t embedded-tomcat-sample .
docker run -d -p 8080:8080 --name embedded-tomcat-sample embedded-tomcat-sample .
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)