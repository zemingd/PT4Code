N = gets.to_i
T = Array.new
q = 1
N.times do |i|
  data = gets.to_i
  if !T.include?(data)
    T << data 
    q *= data
  end
end
T.sort!{|a, b| b <=> a }
max = T.max
s = 0
if N == 1
  s = max
else
  (1..q).each do |i|
    s = max * i
    T.each do |item|
      if s % item != 0
        s = -1
        break
      end
    end
    if s != -1
      break
    end
  end
end
p s