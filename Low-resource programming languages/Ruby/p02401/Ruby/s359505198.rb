# -*- coding: utf-8 -*-
# case.rb

loop{ # 無限ループをするメソッド

  a, op, b = STDIN.gets.split(' ')
  a = a.to_i
  b = b.to_i

  case op
  when '+' 
    puts a + b
  when '-'
    puts a - b
  when '*'
    puts a * b
  when '/'
    puts a / b
  else
    break
  end
}