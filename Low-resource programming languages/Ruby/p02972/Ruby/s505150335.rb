n = gets.to_i #rand(10)
a = gets.split(" ").map(&:to_i)#[]
#n.times do
#  a << rand(2)
#end

#p n
#p a
#puts ""

b = a.clone

(n/2).downto(1) do |i|

#  puts "n : #{n} i : #{i}"
#  p b

  sum = b[(i*2)-1..-1].each_slice(i).map(&:first).inject(:+)

#  puts "sum : #{sum}"
#  p sum % 2

  if sum % 2 != a[i-1]
    b[i-1] = 1
  else
    b[i-1] = 0
  end

end

#p b

#b.each_with_index do |bi,i|
#  cnt = n/(i+1)
#  sum = 0
#  sum = b[i..-1].each_slice(i+1).map(&:first).inject(:+)
#  puts "i : #{i} sum : #{sum} %2 : #{sum % 2}"
#  div << sum % 2
#end

#p div
sum = b.inject(:+)
puts sum

if sum != 0
  indi = []
  b.each_with_index do |bi,idx|
    if bi == 1
      indi << idx+1
    end
  end
  puts indi.join(" ")
end
