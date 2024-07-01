require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

# 入力値を文字の配列で返却する
def gets_nsp_list()
  gets.chomp.split("")
end

A, B = gets_i_list
codes = gets_nsp_list
numbers = ("0".."9").to_a

A.times do
  c = codes.shift
  unless numbers.include?(c)
    puts "No"
    exit
  end
end

c = codes.shift
if c != "-"
  puts "No"
  exit
end

B.times do
  c = codes.shift
  unless numbers.include?(c)
    puts "No"
    exit
  end
end

if codes.empty?
  puts "Yes"
else
  puts "No"
end