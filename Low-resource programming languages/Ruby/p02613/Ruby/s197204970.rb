def fmt(ac,wa,tle,re)
  puts "AC x #{ac}\nWA x #{wa}\nTLE x #{tle}\nRE x #{re}"
end
N = gets.to_i
s = []
N.times do
  s.push(gets.chomp)
end
a=b=c=d=0
s.each do |val|
  case val
    when "AC"
      a += 1
    when "WA"
      b += 1
    when "TLE"
      c += 1
    when "RE"
      d += 1
  end
end
fmt(a,b,c,d)