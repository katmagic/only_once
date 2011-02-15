only_once
---------

`only_once` allows you to, not surprisingly, do something only once. We figure
this out by the location of the call and the arguments given.

	5.times do |i|
		only_once{ puts 'This will only be executed once.' }
		only_once(i%2){ puts 'This will be executed twice.' }
	end

As you can see, `only_once()` can take arguments. If the set of arguments given
to it is unique (or, more accurately, if the array of arguments given the first
time it was called at a particular location decide that the array of arguments
given in the current invocation are equivalent to them (by means of the `==()`
method of the first argument array given)).

And one more example just to clarify:

	def x(m)
		only_once{ puts 'I will only be executed once' }
		only_once(m){ puts 'but I will be executed twice!' }
		puts 'and _I_ will be executed thrice!'
	end

	x(1)
	x(1)
	x(2)

License
-------

This is free and unencumbered software released into the public domain. See
[unlicense.org](http://unlicense.org/).
