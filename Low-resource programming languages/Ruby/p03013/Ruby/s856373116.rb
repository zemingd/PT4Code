n,m = gets.split.map(&:to_i)
a = []
MD = 10**9+7

m.times do |i|
  if i == 0
    a << gets.to_i
  else
    t = a[-1]
    a << gets.to_i
    if a[-1]-t == 1
      puts 0
      exit 1
    end
  end
end

step = []
(n+1).times do |i|
  if i == 0
    step[i] = 0
  elsif i == 1
    if not a.include?(1)
      step[i] = 1
    else
      step[i] = 0
    end
  elsif i == 2
    if not a.include?(2)
      step[i] = step[1]+1
    else
      step[i] = 0
    end
  else
    if not a.include?(i)
      step[i] = (step[i-1]+step[i-2])%MD
    else
      step[i] = 0
    end
  end
end

puts step[-1]
