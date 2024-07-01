N = gets.chomp.to_i

BA = []
N.times do
  a, b = gets.chomp.split().map(&:to_i)
  BA << [b, a]
end

sorted_BA = BA.sort_by {|x| [x[0], -x[1]]}
work_sum = 0

sorted_BA.each do |ba|
  work_sum += ba[1]
  if work_sum > ba[0]
    print('No')
    exit(0)
  end
end

print('Yes')
