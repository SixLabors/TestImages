rmdir /S /Q _run\repo

git clone --single-branch --depth 1 https://github.com/SixLabors/ImageSharp.git --branch tocsoft/cli _run\repo

dotnet restore _run\repo
dotnet run -c release --project ".\_run\repo\src\ImageSharp.CLI\ImageSharp.CLI.csproj" tests/**/*.json
