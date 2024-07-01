S = gets.chomp

c = max = 0

S.chars do |ch|
  ch =~ /A|T|C|G/ ? c += 1 : c=0
  max = c if c > max
end

puts max