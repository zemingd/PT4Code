S = gets.chomp
ans = 0
S.size.times do |i|
  i.upto(S.size) do |j|
    if S[i..j].split('').all?(|s| ['A', 'C', 'G', 'T'].include?(s))
      ans = [ans, j-i].max
    end
  end
end

puts ans