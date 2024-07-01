require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end

d = 5000000000000000

s = gets.chomp
k = gets_i

s.chars.each_with_index do |s, i|
  if i == k - 1
    puts 1
    exit
  elsif s != "1"
    puts s
    exit
  else
    puts 1
  end
end