input = readlines()

l1 = input.shift.chomp.split("\s").map{|x| x.to_i}
l2 = input.shift.chomp.split("\s").map{|x| x.to_i}
l3 = input.shift.chomp.split("\s").map{|x| x.to_i}

num = input.shift.chomp.to_i

opened = []
input.each do |n|
  n = n.chomp.to_i
  opened.push(n)
end

done = false

done = true if l1.all?{|x| opened.include?(x)}
done = true if l2.all?{|x| opened.include?(x)}
done = true if l3.all?{|x| opened.include?(x)}
done = true if [l1[0], l2[0], l3[0]].all?{|x| opened.include?(x)}
done = true if [l1[1], l2[1], l3[1]].all?{|x| opened.include?(x)}
done = true if [l1[2], l2[2], l3[2]].all?{|x| opened.include?(x)}
done = true if [l1[0], l2[1], l3[2]].all?{|x| opened.include?(x)}
done = true if [l1[2], l2[1], l3[0]].all?{|x| opened.include?(x)}

puts done ? 'Yes' : 'No'
