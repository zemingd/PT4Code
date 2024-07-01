# 17:16 -
s = gets.to_s.chomp.bytes
t = gets.to_s.chomp.bytes

n = s.size

a = Hash.new(0)
b = Hash.new(0)

n.times do |i|
  
  if a[s[i]] != b[t[i]]
    puts "No"
    exit
  else
    a[s[i]] += 1
    b[t[i]] += 1
  end
end

puts "Yes"