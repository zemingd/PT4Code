# -*- coding: utf-8 -*-
# case.rb

loop{ # 無限ループをするメソッド
  
  a, op, b =  STDIN.gets.split(' ')
  a = a.to_i
  b = b.to_i

  # ここから下を変える
  if op == "?" then
    break
  else
    puts(case op
         when "+"
           a + b
         when "-"
           a - b
         when "*"
           a * b
         when "/"
           a / b
         end)
  end
}