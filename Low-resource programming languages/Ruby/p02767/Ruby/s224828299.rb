count = gets.to_i
pos = Array.new
pos=gets.chomp.split(" ").map(&:to_i);
min = pos.min
max = pos.max
amount_min = nil
for i in min..max do
  amount = 0
  isBreak = false
  pos.each do |p|
    if amount_min != nil && amount_min < amount
      isBreak = true
      break
    end
    amount += (i - p)*(i - p)
  end
  break if isBreak
  if amount_min == nil || amount <= amount_min
    amount_min = amount
  end
end
print amount_min
