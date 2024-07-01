N, M = gets.strip.split(' ').map(&:to_i)
ABS = readlines.map {|line| line.split(' ').map(&:to_i)}

money = 0
left_day = M

jobs = ABS.group_by{|job| job[0]}
M.times do |i|
  today = i + 1
  target_index = nil
  current = 0
  today.times do |d|
    s = today - d
    unless jobs[s].nil? || jobs[s].size == 0
      jobs[s].sort_by! {|x| -x[1]}
      if current < jobs[s][0][1]
        current = jobs[s][0][1] 
        target_index = s
      end
    end
  end
  money += current
  jobs[target_index].delete_at(0) if target_index
end

puts money