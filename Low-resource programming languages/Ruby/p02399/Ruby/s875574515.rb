while str = STDIN.gets
  n = str.split(" ")
  a = n[0].to_i
  b = n[1].to_i
 if 1 <=a && 1 <=b && a <= 100000000 && b <= 100000000
  d = a / b
  r = a % b
  f = a / b.to_f
   puts "#{d} #{r} #{f}"
 else
  break
 end
end
