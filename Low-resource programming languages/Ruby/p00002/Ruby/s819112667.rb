while data = gets
  a,b = data.split(" ").map(&:to_i)
  puts (a + b).to_s.size
end