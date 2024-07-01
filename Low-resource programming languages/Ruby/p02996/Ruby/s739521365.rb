n = gets.chomp.to_i
ab = []
n.times do
  ab << gets.chomp.split(' ').map(&:to_i)
end

ab.sort!{|x, y| x[1] <=> y[1]}

for i in 1..(ab.count-1)
  ab[i][0] = ab[i][0] + ab[i-1][0] 
end

ab.each do |ab|
  if ab[0] > ab[1]
    puts 'No'
    exit
  end
end

puts 'Yes'