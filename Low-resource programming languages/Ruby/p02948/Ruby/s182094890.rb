N, M = gets.split.map(&:to_i)
#N,M=10**5, 10**5

works = Hash.new{|k,v| k[v]=[]}
works[M] << 0
N.times do |i|
  a, b = gets.split.map(&:to_i)
  #a, b = rand(1..10**5), rand(1..10**4)
  next if a > M
  works[a] << b
end

days = works.keys.sort
now = 1
tingins = works[days[0]]
ans = 0
(1..(days.size-1)).each do |i|
  day = days[i]
  while now < day
    if tingins.empty?
      now = day
      break
    else
      ans += tingins.pop
    end
    now += 1
  end
  
  works[day].each do |yen|
    index = tingins.bsearch_index {|x| x >= yen} || -1
    tingins.insert(index, yen)
  end
end
ans += tingins.pop

p ans
