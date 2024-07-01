n = gets.chomp.split(" ").first.to_i
ar = []
(0...n).each do
  ar << gets.chomp
end
ar.sort!
puts ar.join