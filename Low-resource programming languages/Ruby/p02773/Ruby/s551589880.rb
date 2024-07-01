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

count_hash = {}
max = 0
n.times do
  s = gets_s
  count = count_hash[s].to_i + 1
  count_hash[s] = count
  max = [max, count].max
end

ans = []
count_hash.each do |k, v|
  if v == max
    ans.push k
  end
end

ans.sort.each do |a|
  puts a
end