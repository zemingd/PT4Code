require 'pp'

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end

N = gets_i
A = gets_i
B = gets_i
C = gets_i
D = gets_i
E = gets_i

abcde = [A, B, C, D, E]
min   = abcde.min
min_index = abcde.index(min)

count = (N.to_f / min).ceil

if count > 1
  puts count - 1 + 5
else
  puts 5
end