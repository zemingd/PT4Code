N = gets.to_i
A = gets.split.map(&:to_i)

counter = Hash.new(0)

A.each do |a|
  counter[a] += 1
end

case counter.size 
when 3
  if counter.keys.inject(:^) == 0 && counter.values.all? { |n| n == N / 3 }
    puts 'Yes'
  else
    puts 'No'
  end
when 2
  if counter[0] == N / 3
    puts 'Yes'
  else
    puts 'No'
  end
when 1
  if counter[0] == N
    puts 'Yes'
  else
    puts 'No'
  end
else
  puts 'No'
end
