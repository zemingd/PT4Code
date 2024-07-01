S = gets.chomp
ans = 0
S.size.times do |i|
  i.upto(S.size - 1) do |j|
    if S[i..j].split('').all?{|s| ['A', 'C', 'G', 'T'].include?(s)}
      ans = [ans, j-i+1].max
    end
  end
end

puts ans