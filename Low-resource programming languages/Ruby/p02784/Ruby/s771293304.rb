h,n = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

remain = h
a.each do |an|
  remain = remain - an
  if remain <= 0
    puts 'Yes'
    exit
  end
end

puts 'No'


