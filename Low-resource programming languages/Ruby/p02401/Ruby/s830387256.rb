# -*- coding: utf-8 -*-

loop{ #無限ループをするメソッド
  a, op, b = STDIN.gets.split
  a = a .to_i
  b = b .to_i
  c = c .to_i
  op = op .to_s
  case op
  when '+' 
    c = a + b
    puts c
  when '-' 
    c = a - b
    puts c
  when '*' 
    c = a * b
    puts c
  when '/'  
    c = a/b
    puts c
  when '?'
    break
  end
}