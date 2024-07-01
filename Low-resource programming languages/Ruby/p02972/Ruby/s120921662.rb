n = gets.chomp.to_i
ai = gets.chomp.split.map(&:to_i)
ans = []
bi = Array.new(n, 0)

n.downto(1) do |i|
  sum = 0
  (2*i).step(n, i){|j| sum += bi[j-1]}
  if sum % 2 != ai[i-1]
    bi[i-1] = 1
    ans << i
  end
end

puts ans.size
puts ans