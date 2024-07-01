while str = STDIN.gets
  n = str.split(" ")
  a1 = n[0].to_i
  a2 = n[1].to_i
  area = a1*a2
  length = a1*2 + a2*2
  puts "#{area} #{length}"
end
