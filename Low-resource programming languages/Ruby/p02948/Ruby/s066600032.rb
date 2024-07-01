N, M = gets.chomp.split(' ').map(&:to_i)

AB = []
N.times do |i|
  AB[i] = gets.chomp.split(' ').map(&:to_i)
end

group_by_reward = AB.group_by{|v|v[1]}


reward_day = {}
group_by_reward.each do |k, v|
  reward_day[k] = v.map{|m| m[0]}.sort.reverse
end

sorted_reward_day = Hash[reward_day.sort.reverse]

@working_day = Array.new(M, nil)
@prev_day = 0
@target_idx = -1
sorted_reward_day.each do |r, days|
  days.each do |day|

    if day == @prev_day
      @target_idx += 1
    else
      @target_idx = (day - 1)
    end
    
    @prev_day = day
    next if @target_idx > M - 1

    while(!@working_day[@target_idx].nil?)
      break if @target_idx >= (M - 1)
      @target_idx += 1
    end

    if(!@working_day[@target_idx].nil?)
      next
    end
    @working_day[@target_idx] = r

  end
end

@output = 0
@working_day.each do |v|
  next if v.nil?
  @output += v
end
print @output
