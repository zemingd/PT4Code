require 'prime'
x=gets.to_i
prime_enum = Prime.each
prime_enum.take_while{|i|i<x}
p prime_enum.take(1)[0]