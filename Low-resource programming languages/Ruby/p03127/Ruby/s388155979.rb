n = gets.to_i
as = gets.split(nil, n).map(&:to_i)

while as.count != 1 do
  min = as.min
  flg = true
  as = as.map do |a|
    if a == min && flg
      flg = false
      a
    else
      a % min
    end
  end
  as = as.select {|a| a > 0 }
end

puts as.first
