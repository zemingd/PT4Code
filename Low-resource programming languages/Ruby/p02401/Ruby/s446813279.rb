# -*- coding: utf-8 -*-
# case.rb



 a,op,b = STDIN.gets.spoit(' ')
 a = a.to_i
 b = b.to_i

  case op
  when "+"
    puts a + b
  when "-"
    puts a - b
  when "*"
    puts a * b
  else
    puts a / b
    break
  end