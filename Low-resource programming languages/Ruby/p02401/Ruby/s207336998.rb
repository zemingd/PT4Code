# -*- coding: utf-8 -*-
# case.rb

puts '0~10の間の数字を入力してください。(範囲の外に出たら終了。)'
loop{ # 無限ループをするメソッド
  a, op, b = STDIN.gets.split(' ')
  a = a.to_i
  b = b.to_i

  case op
  when  "+" then
    puts a + b
  when "-" then
    puts 
a - b
  when "*" then
    puts a * b
  when "/" then
    puts a / b
  else
    break
  end
}