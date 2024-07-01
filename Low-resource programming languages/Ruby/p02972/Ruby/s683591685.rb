n = gets.to_i
a = gets.chomp.split(' ').map{|bit| (bit == '1') }
div_list = Array.new(n) { [0] }
div_list[0] = []
(2..n).each do |x|
  i = x*2 - 1
  while i < n
    div_list[i].push(x-1)
    i += x
  end
end
good_layout = []
a.each_with_index.reverse_each do |bit, i|
  if bit
  	div_list[i].each {|x| a[x] = !a[x] }
    good_layout.push(i+1)
  end
end
 
puts(good_layout.length)
puts(good_layout.join(' ')) if good_layout.length > 0