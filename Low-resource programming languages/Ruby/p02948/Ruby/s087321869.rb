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
@max_date = 0
day_reward.each do |d, r|
  break if d > M
  target_date = d
  r.sort.reverse.each do |reward|
    # print @days
    # print "\n"
    
    # すでにある値との比較
    while (@days[target_date] && @days[target_date] >= reward)
      target_date += 1
    end

    break if target_date > M
    # print 'target_date=>' 
    # print target_date
    # print "\n"
    # print '@days[target_date]=>' 
    # print @days[target_date]
    # print "\n"
    if @days[target_date] > 0
      # print "@max_date=>"
      # print @max_date
      # print "\n"
      # print "target_date=>"
      # print target_date
      # print "\n"
      @max_date.downto(target_date) do |y|
        next if y+1 > M
        @days[y+1] = @days[y]
      end
      @max_date += 1
    end

    @days[target_date] = reward
    @max_date = [target_date, @max_date].max
    target_date += 1
  end
end

# print @days

@output = 0
@days.each do |v|
  @output += v
end

puts @output
