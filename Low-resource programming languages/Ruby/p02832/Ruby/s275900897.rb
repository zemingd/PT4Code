n = gets.to_i
as = gets.split.map &:to_i

crash = 0
i = 1
as.each do |a|
  if a == i
    i += 1
  else
    crash += 1
  end
end

crash = -1 if crash == n

p crash