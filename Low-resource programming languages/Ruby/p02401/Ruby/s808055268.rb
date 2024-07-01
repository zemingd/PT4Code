# -*- coding: utf-8 -*-

loop{ #無限ループをするメソッド
  a, op, b = STDIN.gets.split
  a = a .to_i
  b = b .to_i
  op = op .to_s
  puts( case op
        when '+' 
          a + b
        when '-' 
          a - b
        when '*' 
          a * b
        when '/'  
          c = a/b
        when '?'
          break
        end)
      }
      
      