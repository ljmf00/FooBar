module app;

int main() {
	import std.stdio : writeln;

	foreach(i; 1 .. 100)
	{
		if(i % 15 == 0)
			writeln("FooBar");
		else if(i % 3 == 0)
			writeln("Foo");
		else if(i % 5 == 0)
			writeln("Bar");
		else
			writeln(i);
	}

	return 0;
}
