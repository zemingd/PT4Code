io = STDIN
n=io.gets.to_i
str=io.gets.chomp
def next(c)
  c=="Z" ? "A" : c.next
end
puts str.each_byte.map{|c|(c+n)>90 ? c+n-90+64 : c+n }.map{|b|b.chr}.join
