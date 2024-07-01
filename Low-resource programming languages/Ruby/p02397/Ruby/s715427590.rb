tmp = []
cnt = "0"
while cnt != [0, 0]
  i = gets.chomp.split.map(&:to_i)
  tmp.push(i)
  tmp.flatten!
  cnt = i
end
p "tmp = #{tmp}"

num_of_element = -1 + tmp.length/2
# tmp.delete(tmp.length)
p "num_of_element = #{num_of_element}"
p "tmp = #{tmp}"

i = 0
num_of_element.times do
  x = tmp[i]
  y = tmp[i+1]
  if x <= y
    puts "#{x} #{y}"
  else
    puts "#{y} #{x}"
  end
  i = i + 2
end