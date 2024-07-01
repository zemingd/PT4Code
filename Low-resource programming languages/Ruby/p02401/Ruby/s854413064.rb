# -*- coding: utf-8 -*-
# case.rb

puts '数字を入力してください。'
loop{ # 無限ループをするメソッド

  a, op, b = STDIN.gets.split(' ')
  a = a.to_i
  b = b.to_i
  if op == "?"then
    break
  else
    puts(case op
         when '+'
           a + b
         when '-'
           a - b
         when '*'
           a * b
         when '/'
           a / b
         else
           break
         end)
  end
}