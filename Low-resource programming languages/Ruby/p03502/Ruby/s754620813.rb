n = gets.to_i

h = n.to_s.chars.inject(0) do |s, i|
  s + i.to_i
end

puts (n % h == 0) ? 'Yes' : 'No'