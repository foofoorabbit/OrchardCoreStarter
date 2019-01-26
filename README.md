# OrchardCore Starter

This repository is an example on how an OrchardCore project can be scaffolded.
I also included a example helm chart to deploy to Kubernetes.

This starter is build using the beta version of the OrchardCore CMS.
See the docs here: https://orchardcore.readthedocs.io/en/dev

## How this was setup

The Web folder was scaffolded using the `dotnet new occms` command.
The Theme was scaffolded using the `dotnet new octheme` command. I then copied
the OrchardCore [ComingSoon](https://github.com/OrchardCMS/OrchardCore/tree/dev/src/OrchardCore.Themes/TheComingSoonTheme) theme

## Developper environment

Here is the recommended dev environment setup:

- docker + docker-compose
- VSCode + extensions
  - Omnisharp
  - GitLens
  - EditorConfig

## Quickstart

- From the root of the project run `docker-compose up`
- Visit http://localhost:5000
- Visit http://localhost:5000/admin

## Using docker-compose commands

It is recommended to use docker-compose commands to manage your developer environment

```bash
docker-compose up # builds and runs the website and database

docker-compose up -d # builds and runs the website and database, detatched

docker-compose stop # stops running containers

docker-compose down # stops and remove containers

docker volume prune # prunes all volumes no longer attached at a container, useful to delete the volumes attached to the App_Data and the database.
```

## Setting up your nuget feed

You most likely won't need these if you use docker-compose commands but here it is.

---

Since we are using the developer version of OrchardCore, you need to add a nuget
package source to your nuget configuration file.
In linux, this file is located `~/.nuget/NuGet/NuGet.Config`

```xml
<?xml version="1.0" encoding="utf-8"?>
<configuration>
  <packageSources>
    <add key="nuget.org" value="https://api.nuget.org/v3/index.json" protocolVersion="3" />
    <add key="OrchardPreview" value="https://www.myget.org/F/orchardcore-preview/api/v3/index.json" protocolVersion="3" />
  </packageSources>
</configuration>
```
