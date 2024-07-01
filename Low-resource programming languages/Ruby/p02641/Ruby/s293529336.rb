infos = gets.chomp.split(' ')
nums = gets.chomp.split(' ').map(&:to_i)
x = infos[0].to_i
dif = 100
y = 0

if infos[1] == '0'
  puts x; return 
end

(0..100).each do |n|
  next if nums.include?(n)
  if (x - n).abs < dif
    dif = (x - n).abs
    y = n
  end
end

puts y
