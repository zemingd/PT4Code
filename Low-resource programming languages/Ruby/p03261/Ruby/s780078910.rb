n = gets.to_i
ary = []
n.times do |i|
  w = gets.chomp
  if ary.include?(w) || (i !=0 && ary[i-1][-1] != w[0])
    puts "No"
    exit
  end
  ary[i] = w
end

puts "Yes"