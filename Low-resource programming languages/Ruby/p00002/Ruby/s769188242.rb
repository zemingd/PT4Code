input = gets(nil)

input.split("\n").each do |l|
  a, b = l.split(" ").map(&:to_i)
  puts (a + b).to_s.size
end