n = gets.to_i
strings = gets.chomp.split("").map(&:to_s)
counts = []
0.upto(n - 1) do |index|
  counts << (strings.slice(0..index) & strings.slice(index + 1..n)).size
end
puts counts.max