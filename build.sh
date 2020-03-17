VERSION="2.1.1-SNAPSHOT"
mvn clean package
mvn -pl src/server/ docker:build -Ddocker.directory=src/server/src/main/docker
docker tag cassandra-reaper strapdata.azurecr.io/strapdata/cassandra-reaper:$VERSION
docker push strapdata.azurecr.io/strapdata/cassandra-reaper:$VERSION
