while str = STDIN.gets
  n = str.split(" ")
  a = n[0].to_f
  b = n[1].to_f

  d = a.to_i / b.to_i
  r = a.to_i % b.to_i
  f = a / b
   puts "#{d} #{r} #{f}"
end
