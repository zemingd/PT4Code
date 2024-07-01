N, M = gets.chomp.split.map(&:to_i)
broken = Array.new(M) { gets.chomp.to_i }
stairs = Array.new(N + 2)
broken.each do |i|
  stairs[i] = 0
end
stairs[N] = 1
stairs[N + 1] = 0
(N - 1).downto(0) do |i|
  if stairs[i].nil?
    stairs[i] = stairs[i + 1] + stairs[i + 2]
  end
end
puts stairs[0] % 1000000007
