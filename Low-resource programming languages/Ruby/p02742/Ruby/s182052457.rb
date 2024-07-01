h, w = gets.chomp.split(" ").map(&:to_i);

if (h == 1 || w == 1)
  puts 1
  exit 0
end
w1 = w / 2 + w%2
w2 = w - w1
 
h1 = h / 2 + h%2
h2 = h - h1
 
puts w1*h1 + w2*h2