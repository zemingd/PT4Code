input_list = []
while input = gets
  input_list << input.chomp.split(' ')
end

count = 0
limit_minuts = input_list[0][2].to_i
N = input_list[1]
M = input_list[2]

if M[0].to_i > limit_minuts and N[0].to_i > limit_minuts
  puts 0
  exit
end

N.each do |n|
  # puts n
  if n.to_i < M[0].to_i then
    if limit_minuts > n.to_i then
      limit_minuts = limit_minuts - n.to_i
      count +=1
    else
      break
    end
  else
    if limit_minuts > M[0].to_i then
      limit_minuts = limit_minuts - M[0].to_i
      count +=1
    else
      break
    end
  end
end
puts count