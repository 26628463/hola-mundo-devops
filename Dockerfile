# Etapa 1: Compilación
FROM mcr.microsoft.com/dotnet/sdk:9.0 AS build
WORKDIR /src

COPY ["HolaMundo/HolaMundo.csproj", "HolaMundo/"]
RUN dotnet restore "HolaMundo/HolaMundo.csproj"

COPY . .
WORKDIR "/src/HolaMundo"
RUN dotnet publish "HolaMundo.csproj" -c Release -o /app/publish /p:UseAppHost=false

# Etapa 2: Ejecución
FROM mcr.microsoft.com/dotnet/aspnet:9.0 AS final
WORKDIR /app

COPY --from=build /app/publish .

EXPOSE 8080

ENV ASPNETCORE_URLS=http://+:8080

ENTRYPOINT ["dotnet", "HolaMundo.dll"]