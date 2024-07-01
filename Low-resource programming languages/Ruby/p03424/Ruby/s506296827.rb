n = gets.to_i
s = gets.strip.split

puts s.uniq.length == 4 ? "Four" : "Three"