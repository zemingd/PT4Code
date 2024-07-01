N, M = gets.strip.split(' ').map(&:to_i)
ABS = readlines.map {|line| line.split(' ').map(&:to_i)}

money = 0
left_day = M

ABS.sort_by! {|x| [x[0], -x[1]]}

M.times do |i|
  today = i + 1
  max = 0
  delete = nil
  ABS.size.times do |s|
    break if ABS[s][0] > today
    if max < ABS[s][1]
      max = ABS[s][1]
      delete = s
    end
  end
  if delete
    ABS.delete_at(delete)
  end
  money += max
end

puts money