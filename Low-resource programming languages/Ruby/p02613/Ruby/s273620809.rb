N = gets.to_i
ary = N.times.map{gets.chomp}

a = 0
w = 0
t = 0
r = 0
ary.each do |s|
  case s
    when "AC"
    	a += 1
    when "WA"
    	w += 1
    when "TLE"
    	t += 1
    when "RE"
    	r += 1
  end
end
puts "AC x #{a}
WA x #{w}
TLE x #{t}
RE x #{r}"