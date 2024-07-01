s = gets.chomp.split('')

ans = 0
(0..s.size).to_a.combination(2) do |ar|
  m = s[ar[0]...ar[1]]
  if m.all?{|e| ['A','C','G','T'].include?(e)}
    ans = [ans,m.size].max
  end
end
p ans
