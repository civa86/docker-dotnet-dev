FROM microsoft/dotnet:2.0-sdk

ENV ASPNETCORE_URLS http://*:5000
ENV ASPNETCORE_ENVIRONMENT Development

EXPOSE 5000/tcp

WORKDIR /app
ENTRYPOINT ["dotnet"]
CMD ["--info"]