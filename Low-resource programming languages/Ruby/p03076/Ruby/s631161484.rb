def cin; gets.split.map(&:to_i) end
def cout(*x); puts x.join(" ") end

# exit if $0 != __FILE__

a = Array.new(5)
a[0] = gets.to_i
a[1] = gets.to_i
a[2] = gets.to_i
a[3] = gets.to_i
a[4] = gets.to_i

m = a.map{|x|x%10}.map{|x|x==0?10:x}.min
puts a.map{|x|(x+9)/10*10}.inject(:+) - 10 + m
