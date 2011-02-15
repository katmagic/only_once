#!/usr/bin/ruby
# This is free and unencumbered software released into the public domain.

# Do something, but only once (in the lifetime of the program). This is based on
# the output of caller() and the value of _args_, so there's some possibility
# for error if you've reloaded files, etc. Additionally, you should be strongly
# cautioned that objects given as arguments to only_once() will persist in
# memory until program termination.
def only_once(*args)
	$only_once_previously_called_from ||= Array.new
	unless $only_once_previously_called_from.include? [caller[0], args]
		$only_once_previously_called_from << [caller[0], args]
		yield
	end
end
