# build environment
FROM microsoft/dotnet:2.2-sdk as builder
WORKDIR /app

COPY . ./
WORKDIR /app/Web
RUN dotnet publish -c Release -o ./.build/release

# runtime environment
FROM microsoft/dotnet:2.2-aspnetcore-runtime
EXPOSE 80

WORKDIR /app
COPY --from=builder /app/Web/.build/release .

ENTRYPOINT ["dotnet", "OrchardCoreStarterWeb.dll"]