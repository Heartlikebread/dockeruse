#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

#FROM mcr.microsoft.com/dotnet/aspnet:5.0 AS base
#WORKDIR /app
#EXPOSE 80
#EXPOSE 443
#
#FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build
#WORKDIR /src
#COPY ["20210813TestAPI/20210813TestAPI.csproj", "20210813TestAPI/"]
#RUN dotnet restore "20210813TestAPI/20210813TestAPI.csproj"
#COPY . .
#WORKDIR "/src/20210813TestAPI"
#RUN dotnet build "20210813TestAPI.csproj" -c Release -o /app/build
#
#FROM build AS publish
#RUN dotnet publish "20210813TestAPI.csproj" -c Release -o /app/publish
#
#FROM base AS final
FROM mcr.microsoft.com/dotnet/aspnet:5.0 AS base
EXPOSE 80
COPY . .
ENTRYPOINT ["dotnet", "20210813TestAPI.dll"]