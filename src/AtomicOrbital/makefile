object = atomic_orbital
name = WolframLibrary_Benchmark
path=/Applications/Wolfram\ Engine.app/Contents/Resources/Wolfram\ Player.app/Contents/SystemFiles/
$(object) : $(object).cpp CodeGeneration.wl
		wolframscript -file CodeGeneration.wl
		g++ -O3 -dynamiclib $(object).cpp -o $(object).dylib -std=c++2a\
		-I$(path)/IncludeFiles/C
clean : 
		rm $(object).dylib special_function.hpp