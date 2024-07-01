x = gets.strip.to_i
while true
  flag = true
  (x / 2).times do |i|
    next if i == 1 || i.zero?

    if (x % i).zero?
      flag = false
      break
    end
  end
  break puts x if flag

  x = x.succ
end