while input = gets
  a,b = input.chop.split(" ").map{&:to_f}
  puts (a+b).to_s.length
end

