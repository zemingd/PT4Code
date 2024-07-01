n = gets.to_i
as = gets.split.map(&:to_i).sort
div = as[1]
until div == 0
  flag = 0
  as.each do |a|
    if a % div != 0
      flag += 1
    end
    break if flag > 1
  end
  if flag <= 1
    puts div
    break
  else
    div -= 1
  end
end
