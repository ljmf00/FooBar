module foobar;

/**
 * Authors: Luís Ferreira, contact@lsferreira.net
 * License: MIT License
 * Copyright: 2019, Luís Ferreira
 */


/**
 * FooBar multiples
 *
 * Write a program that prints the numbers from 1 to 100. But for multiples of
 * three print "Foo" instead of the number and for the multiples of five print
 * "Bar". For numbers which are multiples of both three and five print "FooBar".
 *
 * Returns: string array with newlines
 *
 * Examples:
 * --------------------
 * write(foobar!().join); // writes joined foobar array
 * --------------------
 */
enum string[] foobar()()
{
	string[] ret;

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


///
@safe @("Check multiple")
unittest {
	enum string[] foobar = foobar!();

	import std.string : chomp;
	assert(foobar[0].chomp == "1");
	assert(foobar[2].chomp == "Foo");
	assert(foobar[4].chomp == "Bar");
	assert(foobar[14].chomp == "FooBar");
}
