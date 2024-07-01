def rgb(r, g, b)
  number = r * 100 + g * 10 + b
  puts number % 4 == 0 ? "YES" : "NO"
end

r, g, b = gets.chomp.split(" ").map(&:to_i)
rgb(r, g, b)