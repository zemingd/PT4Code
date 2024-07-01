n = gets.to_i
p = gets.chomp
q = gets.chomp
#puts p
#puts q
a = 0
b = 0

#def fact(n)
#  1.upto(n).inject(1) {|sum, n| sum * n}
#end

#f = fact(n)


patterns = 1.upto(n).map {|v| v }.permutation(n).map {|v| v.join(' ') }
#p patterns
patterns.each_with_index do |v, i|
  #puts "v = #{v}, i = #{i}, p = #{p}, q = #{q}\n"
  if v == p
    a = i + 1
  end

  if v == q
    b = i + 1
  end
end

#puts "a = #{a}, b = #{b}\n"

print (a - b).abs
