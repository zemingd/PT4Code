n = gets.to_i
as = gets.split(nil, n).map(&:to_i)

while as.count > 2 do
  min = as.min
  flg = true
  as = as.map do |a|
    if a == min && flg
      flg = false
      a
    else
      a - min
    end
  end
  as = as.select {|a| a > 0 }
end

result = case as.count
         when 1 then as.first
         when 2
           as.max % as.min == 0 ? as.min : as.max % as.min
         end
puts result
