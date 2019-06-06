module app;

void main() {
	enum string foobar()()
	{
		string ret;

		import std.conv : to;

		foreach(ref i; 1 .. 101)
		{
			if(i % 15 == 0)
				ret ~= "FooBar\n";
			else if(i % 3 == 0)
				ret ~= "Foo\n";
			else if(i % 5 == 0)
				ret ~= "Bar\n";
			else
				ret ~= to!string(i) ~ "\n";
		}
		return ret;
	}

	enum string res = foobar!();

	import std.stdio : write;
	write(res);
}
