n = STDIN.gets.to_i
n.times do
  first_integer  = STDIN.gets.chomp
  second_integer = STDIN.gets.chomp
  if first_integer.length < second_integer.length then
    first_integer, second_integer = second_integer, first_integer
  end
  carry=0
  sum=""
  first_integer.chars.reverse.each_with_index do |e, i|
    tmp=0
    tmp+=carry
    tmp += e.to_i
    if second_integer.length > i then
      tmp += second_integer[-1*(i+1)].to_i
    end 
    carry=(tmp/10).to_i
    sum = (tmp-carry*10).to_s + sum
  end
  if carry > 0 then
    sum = carry.to_s + sum
  end
  if sum.length > 80 then
    puts "overflow"
  else 
    puts sum
  end
end