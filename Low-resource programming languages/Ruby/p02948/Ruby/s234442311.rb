N, M = gets.strip.split(' ').map(&:to_i)
ABS = readlines.map {|line| line.split(' ').map(&:to_i)}

ABS.sort_by! {|x| [-x[1], -x[0]]}

money = 0
M.times do |i|
  left_day = M - i
  index = 0
  flag = true
  while flag
    if ABS[index].nil?
      flag = false
    else
      if left_day >= ABS[index][0]
        money += ABS[index][1] 
        ABS.delete_at(index)
        flag = false
      end
      index += 1
    end
  end
end

puts money