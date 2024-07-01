require 'pp'
# 入力値を文字列で返却する
def gets_s()
  gets.chomp
end

s = gets_s
t = gets_s

sd = s.chars.sort.join
td = t.chars.sort.reverse.join

if sd < td
  puts "Yes"
else
  puts "No"
end
