N, M = gets.chomp.split(' ').map(&:to_i)

AB = []
N.times do |i|
  AB[i] = gets.chomp.split(' ').map(&:to_i)
end

group_by_day = AB.group_by{|v|v[0]}.each

day_reward = {}
group_by_day.each do |k, v| 
  day_reward[k] = v.map{|m| m[1]}
end

# print day_reward

@days = Array.new(M+1, 0)

# print "\n"
# print @days
# print "\n"
day_reward.each do |d, r|
  break if d > M
  target_date = d
  r.sort.reverse.each do |reward|
    
    # print "d=>"
    # print d
    # print "\n"

    # すでにある値との比較
    # print '@days[target_date]=>'
    # print @days[target_date]
    # print "\n"
    while (@days[target_date] && @days[target_date] >= reward)
      target_date += 1
    end
    # print 'target_date=>'
    # print target_date
    # print "\n"

    next if target_date > M

    @days[target_date] = reward
    target_date += 1
  end
end


@output = 0
@days.each do |v|
  @output += v
end

puts @output
