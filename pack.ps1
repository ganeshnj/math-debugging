# build the project
cargo build --release

# copy the release artifacts to runtimes dir
New-Item -ItemType Directory -Path .\examples\Math\runtimes\win-x64\native -Force
Copy-Item -Path .\target\release\math.dll -Destination .\examples\Math\runtimes\win-x64\native\math.dll
Copy-Item -Path .\target\release\math.pdb -Destination .\examples\Math\runtimes\win-x64\native\math.pdb

dotnet pack .\examples\Math\Math.csproj -o .\nupkgs

# delete C:\Users\Administrator\.nuget\packages\math\
Remove-Item -Path C:\Users\Administrator\.nuget\packages\math\ -Recurse -Force