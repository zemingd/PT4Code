S = gets.chomp
T = gets.chomp

s_nums = []
t_nums = []

('a'..'z').to_a.each do |i|
  
  if s_nums[S.count(i)]
    s_nums[S.count(i)] += 1
  else
    s_nums[S.count(i)] = 1
  end
 
   
  if t_nums[T.count(i)]
    t_nums[T.count(i)] += 1
  else
    t_nums[T.count(i)] = 1
  end
end

S.length.times do |i|
  if s_nums[i] != t_nums[i]
    puts 'No'
    exit
  end
end

puts 'Yes'
