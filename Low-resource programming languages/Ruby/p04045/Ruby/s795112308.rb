n,k = gets.chomp.split.map(&:to_i)
ds = gets.chomp.split.map(&:to_i)
n.upto(10*n) do |num|
  break p num if (num.to_s.chars.map(&:to_i) & ds).empty?
end
