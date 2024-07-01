N, Q = gets.split(' ').map(&:to_i)
S = gets.chomp
1.upto(Q) do
  l, r = gets.split(' ').map(&:to_i)
  str = S.slice((l + 1)..(r + 1))
  puts str.scan('AC').count
end