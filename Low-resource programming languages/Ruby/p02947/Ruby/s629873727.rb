n = gets.to_i
hash = {}
n.times do
 str = gets.chomp.chars.sort.join
  hash[str] ||= 0
  hash[str] += 1
end

result = 0
hash.each do |s,cnt|
  result += cnt * (cnt-1) /2
end
puts result