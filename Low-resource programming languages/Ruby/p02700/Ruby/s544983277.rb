def wari(x,y) 
n = x%y;re = 0
n === 0 ? re = x/y : re = (x/y)+1
return re
end

a,b,c,d = $stdin.gets.chomp.split(' ').map(&:to_i)
takaatk = wari(c,b)
aoatk = wari(a,d)


if takaatk <= aoatk
puts "Yes"
  else
puts "No"
end