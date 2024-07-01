require "set"
n = gets.chomp.to_i
a_arr = gets.chomp.split(" ").map(&:to_i)

MAX = 10 ** 6
MAX_SQRT = Math.sqrt(MAX)
p_arr = Array.new(MAX + 1)

(2..MAX_SQRT).each do |i|
  tmp = i
  while tmp <= MAX do
    p_arr[tmp] ||= i
    tmp += i
  end
end

set = nil
set2 = Set.new
pairwise_flag = true
a_arr.each do |a|
  p_set = Set.new
  while a > 1 do
    p = p_arr[a] || a
    p_set << p
    a /= p
  end
  set ||= p_set
  set = set & p_set
  next unless pairwise_flag
  p_set.each do |p|
    pairwise_flag = false if set2.include?(p)
    set2 << p
  end
end

if pairwise_flag
  puts "pairwise coprime "
elsif set.size == 0
  puts "setwise coprime"
else
  puts "not coprime"
end
