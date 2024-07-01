N = gets.chomp.to_i
A = gets.split(" ").map(&:to_i)

res = false
a = A.dup
N.times do |i|
  s = a.delete_at(i)

  if a.any? { |o| o == s }
    res = true
    break
  end
  
  a = A.dup
end

puts res ? "NO" : "YES"