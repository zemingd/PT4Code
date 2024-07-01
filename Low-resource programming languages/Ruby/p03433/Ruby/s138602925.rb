_n = gets.to_i
as = gets.strip.split.map(&:to_i).sort.reverse

alice = 0
bob = 0
i = 0
as.each do |a|
  if i.even?
    alice += a
  else
    bob += a
  end
  i += 1
end

p alice - bob