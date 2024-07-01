N = gets
ps = gets.split(' ').map(&:to_i)
result = 0;
na = []
min = 100
ps.each_with_index do |p, index|
  if index == 0
    result += 1;
    next;
  end
  na.push(ps[index - 1])
  if min > ps[index - 1]
    min = ps [index - 1]
  end
  if p < min
    result += 1;
  end
end

puts result;

