range = (0..9).to_a
$stdin.each_line do |line|
  n = line.to_i
  cnt = 0
  range.product(range , range , range) do |a , b , c , d|
    if a + b + c + d == n
      cnt += 1
    end
  end
  puts cnt
end