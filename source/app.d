module app;

/**
 * Authors: Luís Ferreira, contact@lsferreira.net
 * License: MIT License
 * Copyright: 2019, Luís Ferreira
 */

import foobar : foobar;


void main()
{
	import std.array : join;
	enum string res = foobar!().join;

	import std.stdio : write;
	write(res);
}
