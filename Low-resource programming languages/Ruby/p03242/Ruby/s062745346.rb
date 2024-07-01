a=gets.chomp.split("").map(&:to_i)
b=[]
a.each{|i|
  if i==1
    b<<9
  else
    b<<1
  end
}
puts b.join("")