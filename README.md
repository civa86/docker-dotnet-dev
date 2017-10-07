# Docker .NET Developer Environment

.NET Core Debian environment for developers running in a Docker container

## Tags

- [`2.0`, `latest` (2.0/Dockerfile)](https://github.com/civa86/docker-dotnet-dev/blob/master/2.0/Dockerfile)

## Usage

`docker run -v $(pwd):/app -p 5000:5000 civa86/docker-dotnet-dev <DOTNET_CLI_COMMAND>`

#### .NET Core command-line interface 

The container has [dotnet](https://docs.microsoft.com/en-us/dotnet/core/tools/?tabs=netcore2x) executable as entrypoint.

It accepts all arguments you can give to the `dotnet` executable.

#### Examples

###### Create a new ASP.NET Core project

 `docker run -v $(pwd):/app civa86/docker-dotnet-dev new  webapi -n ExampleAspNetCore`

 This will create the `ExampleAspNetCore` folder inside your `pwd` directory with a working ASP.NET Core project inside.

 ###### Run and Watch Project 

 `docker run -v $(pwd):/app -p 5000:5000 civa86/docker-dotnet-dev watch run`

 Be sure to add [Microsoft.DotNet.Watcher.Tools](https://github.com/aspnet/Docs/blob/master/aspnetcore/tutorials/dotnet-watch.md) package reference to your .csproj project file

 ```xml
 <ItemGroup>
    <DotNetCliToolReference Include="Microsoft.DotNet.Watcher.Tools" Version="2.0.0" />
</ItemGroup> 
 ```
 
###### NO ARGUMENTS

`docker run civa86/docker-dotnet-dev`

The container will exec `dotnet --info`

```bash
.NET Command Line Tools (2.0.0)

Product Information:
 Version:            2.0.0
 Commit SHA-1 hash:  cdcd1928c9

Runtime Environment:
 OS Name:     debian
 OS Version:  9
 OS Platform: Linux
 RID:         linux-x64
 Base Path:   /usr/share/dotnet/sdk/2.0.0/

Microsoft .NET Core Shared Framework Host

  Version  : 2.0.0
  Build    : e8b8861ac7faf042c87a5c2f9f2d04c98b69f28d
```

