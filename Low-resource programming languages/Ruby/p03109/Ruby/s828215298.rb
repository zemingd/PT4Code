a,b,c = gets.chomp.split("/").map(&:to_i)
ret = "Heisei"
tbd = "TBD"
if(a > 2019)
  ret = tbd
elsif(a == 2019 && b > 4)
  ret = tbd
elsif(b == 4 && c > 30)
  ret = tbd
end
puts ret
