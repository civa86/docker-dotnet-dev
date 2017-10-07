FROM microsoft/dotnet:2.0-sdk

ENV ASPNETCORE_URLS http://*:5000
ENV ASPNETCORE_ENVIRONMENT Development

EXPOSE 5000/tcp

WORKDIR /app

COPY ./start.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/start.sh
ENTRYPOINT ["/usr/local/bin/start.sh"]