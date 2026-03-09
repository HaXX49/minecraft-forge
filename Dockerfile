FROM eclipse-temurin:8u482-b08-jre-ubi10-minimal

#Install Forge Server
ENV FORGE_VERSION 1.12.2-14.23.5.2859
EXPOSE 25565
EXPOSE 25575

WORKDIR /opt/java
ADD https://maven.minecraftforge.net/net/minecraftforge/forge/$FORGE_VERSION/forge-$FORGE_VERSION-installer.jar .
RUN java -jar forge-$FORGE_VERSION-installer.jar --installServer
RUN echo eula=true > eula.txt

VOLUME "/opt/java/mods"

CMD java -jar forge-$FORGE_VERSION.jar --nogui