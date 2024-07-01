N = gets.chomp.to_i
A = gets.split(" ").map(&:to_i)

a = A.dup

res = false

N.times do |i|
  s = a.delete_at(i)

  if a.find { |o| o == s }
    res = true
    break
  end
  
  a = A.dup
end

puts res ? "NO" : "YES"