N = gets.to_i
line = gets
data = line.split(" ")
data.map!{|i| i.to_i}
data.sort!{|a, b| b <=> a}
two = -1
area = 0
(N-1).times do |i|
  #p "two=#{two} data[i]=#{data[i]} data[i+1]=#{data[i+1]}"
  if two != -1
    if !data[i].equal?(two) and data[i].equal?(data[i+1])
      area = two * data[i]
      break
    end
  elsif i <= (N-4)
    if data[i].equal?(data[i+3])
      area = data[i] * data[i]
      break
    elsif data[i].equal?(data[i+1])
      two = data[i]
    end
  end
end
p area