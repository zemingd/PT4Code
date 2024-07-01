N = gets.to_i
T = Array.new
N.times do |i|
  T << gets.to_i
end
max = T.max
if N == 1
  s = max
else
  data = Array.new
  q = 1
  T.each do |item|
    if max % item != 0 and !data.include?(item)
      data << item
      q *= item
    end
  end
  if data.empty?
    s = max
  else
    data.sort!{|a, b| b <=> a }
    t_max = data.max
    common_divisor = t_max
    (1..q).each do |i|
      common_divisor = t_max * i
      data.each do |item|
        if common_divisor % item != 0
          common_divisor = -1
          break
        end
      end
      if common_divisor != -1
        break
      end
    end
    #p "max #{max}  com_div #{common_divisor}"
    if common_divisor % max == 0
      s = common_divisor
    else
      s = max * common_divisor
    end
  end
end
p s