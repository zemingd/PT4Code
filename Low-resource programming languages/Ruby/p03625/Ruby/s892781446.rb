N = gets.to_i
line = gets
data = line.split(" ")
data.map!{|i| i.to_i}
num = data.uniq
num.sort!{|a, b| b <=> a }
two = -1
area = 0
num.each do |item|
  con = data.count(item)
  if two != -1
    if con >= 2
      area = two * item
      break
    end
  elsif con >= 4
    area = item * item
    break
  elsif con >= 2
    two = item
  end
end
p area