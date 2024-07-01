s, t = gets.strip.split("\s")
a, b = gets.split("\s").map(&:to_i)
u = gets.strip

if s == u
  a -= 1
elsif t == u
  b -= 1
end

print "#{a} #{b}"