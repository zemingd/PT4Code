n,m = gets.chomp.split(" ").map(&:to_i)

# key: b, value: a_arr
hash = {}
n.times do |t|
  a, b = gets.chomp.split(" ").map(&:to_i)
  hash[b] ||= []
  hash[b] << a
end

money = 0
hash.to_a.sort_by{|b, _| -b }.each do |b, a_arr|
  break if m == 0
  a_arr.sort_by{|a| -a}.each do |a|
    break if m == 0
    next if a > m
    money += b
    m -= 1
  end
end

puts money
