N = gets.chomp.to_i
A = gets.split(" ").map(&:to_i)

res = false
a = A
N.times do |i|
  s = a.delete_at(i)

  if a.include?(s)
    res = true
    break
  end
  
  a = A
end

puts res ? "NO" : "YES"