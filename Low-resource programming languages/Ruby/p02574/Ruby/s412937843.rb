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

num = a_arr[0]
hash = {}
a_arr.each do |a|
  num = num.gcd(a)
  set = Set.new
  while a > 1 do
    p = p_arr[a] || a
    set << p
    a /= p
  end
  set.each do |s|
    hash[s] ||= 0
    hash[s] += 1
  end
end

hash.each do |k, v|
  if v > 1
    if num == 1
      puts "setwise coprime"
    else
      puts "not coprime"
    end
    exit
  end
end
puts "pairwise coprime "

