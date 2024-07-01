DAYS =  %w(SUN MON TUE WED THU FRI SAT) * 2

def solve()

  n = gets.chomp
  res = 0
  started = false
  DAYS.each do |i|
    break if i == "SUN" && started
    if i == n
      started = true
    end
    res += 1 if started
  end
  puts res
  
end

solve