n,k = gets.split.map(&:to_i)
s = gets.split("")
a = ""

n.times do |i|
  if i == k-1 
    a += s[i].downcase
  else
    a += s[i]
  end
end

puts a