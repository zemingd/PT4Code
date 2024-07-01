n, q = gets.split.map(&:to_i)
str = gets.chomp
l = []
r = []
q.times do |i|
  l[i], r[i] = gets.split.map(&:to_i)
end

# 累積和の配列
s = []
s[0] = 0
s[1] = 0
1.upto (str.size-1) do |i|
  if str[i-1] == 'A' && str[i] == 'C'
    s[i+1] = s[i] + 1
  else
    s[i+1] = s[i]
  end
end

# puts "#{s}"

q.times do |i|
  puts s[r[i]]-s[l[i]]
end