n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

if a.any?{|aa| aa == 0}
  p 0
  exit
end

ans = 1
a.each do |aa|
  ans *= aa
  if ans > 10**18
    p -1
    exit
  end
end
p ans
