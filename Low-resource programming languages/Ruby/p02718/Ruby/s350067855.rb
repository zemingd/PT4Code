n,m = gets.split(' ').map(&:to_i)
nums = gets.split(' ').map(&:to_i)
target = nums.max(m)
target.each do |t|
  if t < nums.inject(:+) * 1/(4*m).to_f
    puts 'No'
    exit
  end
end
puts 'Yes'