input = gets.to_s.split(" ").map(&:to_i)
sanka_n = input[0]
point_k = input[1]
answer_q = input[2]
seitou = []
ini_point = []
for i in 0..answer_q -1 do
  seitou[i] = gets.to_i
end

for i in 0..sanka_n-1 do
  ini_point[i] = point_k - answer_q
end

for i in 0..answer_q -1 do
  ini_point[seitou[i]-1] += 1
end

for i in 0..sanka_n-1 do
  if ini_point[i] <= 0
    puts "No"
  else
    puts "Yes"
  end
end
