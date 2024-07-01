h,w = gets.split.map(&:to_i)
arr = []
h.times{arr << gets.chomp.split("")}
arr2 =[]
arr.each { |l|
unless l.count(".")== w
arr2 << l
end}

arr3 = arr2.transpose
arr3.map do |i|
  if i.include?("#")
    i
  else
    arr3.delete(i)
  end
end

arr4 = arr3.transpose
arr4.map do |i|
  puts i.join
 end
