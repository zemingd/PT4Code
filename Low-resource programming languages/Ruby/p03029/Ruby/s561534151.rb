a,b=gets.chomp.split(" ").map(&:to_i);

apple_kakera = a * 3
kakera = b + apple_kakera

if kakera == 0
  print 0
  return
end

pie = kakera / 2

print pie