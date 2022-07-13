# syntax=docker/dockerfile:1
FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build-env
WORKDIR /app

# Copy Everything from the current directory to the container
COPY . ./
# restore as distint layer
RUN dotnet restore
# build and publish a release
RUN dotnet publish -c Release -o out

# Build runtime image
FROM mcr.microsoft.com/dotnet/aspnet:6.0
WORKDIR /app
COPY --from=build-env /app/out .
# entrypoint *dll after build
ENTRYPOINT ["dotnet", "aspnetapp.dll"]