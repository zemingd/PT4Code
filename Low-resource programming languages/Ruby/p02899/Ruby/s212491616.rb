n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)
s = {}

for i in 0..n-1
  s[a[i]] = i+1
end

s.sort.each do |value|
  print value[1]
  if value[0] != n
    print " "
  end
end