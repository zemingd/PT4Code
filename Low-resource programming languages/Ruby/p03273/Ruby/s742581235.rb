h,w=gets.split(" ").map(&:to_i)
a=[]
h.times do |i|
  a<<gets.chomp.split("")
end
a.delete_if{|j| j.include?("#")==false}
b=a.transpose
b.delete_if{|j| j.include?("#")==false}
c=b.transpose
c.each do |outer|
  puts outer.join("")
end
