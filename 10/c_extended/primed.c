#include "ruby.h"
#include <stdlib.h>
#include <math.h>


// VALUE is a variable type that represents a Ruby object in C. In this case, VALUE Util
// creates a structure in memory that will be used  for the information about the module 
VALUE Primed;


// Determine whether or not a number is prime. This method should be significantly faster than
// the ruby/regex method
VALUE method_prime(VALUE obj, VALUE args)
{
	register uint64_t n;
	n = NUM2INT(obj);
	if (n == 2)
		return Qtrue;
	if ((n & 1) == 0)
		return Qfalse;

	register uint64_t sqrt_n = ((uint64_t)sqrt(n)) + 1;
	register uint64_t i=3;
	for (i; i<= sqrt_n; i+=2) {
		if (n % i == 0)
			return Qfalse;
	}
	return Qtrue;
}

// Every Class or Module stores a global function called Init_NAME, where name is the name of the 
// class or module. This method is called when the extension is first loaded. It initializes the 
// actual extension and places it within the ruby environment.
void Init_primed() {
	// Here we create the actual module Resource. If we stopped here, and required this exension in
	// Ruby we would essentially have an empty Module named Resource that does nothing.
	Primed = rb_define_module("Primed");
	// Now we want to define the Class or Singleton method "max_rss", and map it to the method_max_rss
	// function within our extension. 
	rb_define_method(Primed, "prime?", method_prime, -2);
}