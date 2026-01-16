MODE = Release

drizzle:
	cd src/Drizzle
	make ported -C src/Drizzle
	cd ../..
	dotnet run --project src/DrizzleExport.Console effects src/Rained/Assets/effects.json

rained:
	dotnet cake --Configuration=$(MODE)

run:
	src/Rained/bin/$(MODE)/net8.0/Rained