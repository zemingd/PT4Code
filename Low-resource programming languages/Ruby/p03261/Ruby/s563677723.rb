require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end

# 入力値を文字列で返却する
def gets_s()
  gets.chomp
end

n = gets_i

wordlist = []

n.times do
  wordlist.push gets_s
end

appearedlist = []
0.upto(n-2) do |i|
  w = wordlist[i]
  if appearedlist.include?(w)
    puts "No"
    exit
  end

  if w.chars.last != wordlist[i+1].chars.first
    puts "No"
    exit
  end
  appearedlist.push w
end

if appearedlist.include?(wordlist.last)
  puts "No"
  exit
end

puts "Yes"