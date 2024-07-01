N, x = gets.split.map(&:to_i)
As = gets.split.map(&:to_i)

ss = As.sort.inject([0]){|s, a| s << s.last + a}.drop(1)
if ss.last == x
  puts N
else
  k = ss.take_while{|s| s <= x}.length
  if k == N
    puts N - 1
  else
    puts k
  end
end