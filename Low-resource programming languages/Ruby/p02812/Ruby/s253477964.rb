n = gets.strip.to_i
s = gets.strip.split('')

counts = 0
s.each_cons(3) do |a, b, c|
  if a == 'A' && b == 'B' && c == 'C'
    counts += 1
  end
end

puts counts
