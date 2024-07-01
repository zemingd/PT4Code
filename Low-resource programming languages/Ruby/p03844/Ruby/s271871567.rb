require 'prime'
include Math
define_method :max, 			-> (a,b) { a > b ? a : b }
define_method :min, 			-> (a,b) { a < b ?  a : b }
define_method :swap, 			-> (a,b) { a, b = b, a }
define_method :gi, 				-> () { gets.split.map(&:to_i) }
define_method :gs, 				-> () { gets.chomp }
define_method :gc,				-> () { gets.chomp.split('') }
define_method :gif, 			-> () { gets.to_i }
define_method :pr,				-> (num) { num.prime_division }
define_method :darray,		-> (size1, size2, init = nil) { Array.new(size1){Array.new(size2){init}} }
define_method :array,			-> (size,init = nil) { Array.new(size){init} }
define_method :putall, 		-> (obj) { obj.each { |o| puts o } }
define_method :repl, 			-> (st,en, &block) { st.upto en do |i| block.call(i) end }
	define_method :rep, 		-> (num, &block) { num.times do |i| block.call(i) end }

		puts eval gs
