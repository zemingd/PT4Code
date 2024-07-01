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

#print sorted_reward_day
#print "\n"

@working_day = Array.new(M, nil)
sorted_reward_day.each do |r, days|
  days.each do |day|

    target_idx = (day - 1)
    break if target_idx > M - 1
    #print "\ntarget_idx=>"
    #print target_idx

    while(!@working_day[target_idx].nil?)
      break if target_idx >= (M - 1)
      target_idx += 1
    end

    #print "\tafter target_idx=>"
    #print target_idx

    if(!@working_day[target_idx].nil?)
      break
    end
    @working_day[target_idx] = r
    #print "\tworking_day=>"
    #print @working_day

  end
end

@output = 0
@working_day.each do |v|
  next if v.nil?
  @output += v
end
print @output
