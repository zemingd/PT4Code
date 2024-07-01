#!/usr/bin/env ruby
require 'prime'
x = gets.to_i
x += 1 while(Prime.prime?(x) != true)                                                                     
puts x