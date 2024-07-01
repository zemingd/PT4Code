while input = gets
  a,b = input.chop.split(" ").map{ |s| s.to_i }
  puts (a+b).to_s.length
end
