n = gets.to_i
a = gets.split.map(&:to_i)

answer = 0
num = 1

a.each do |brick|
  if brick == num
    num += 1
  else
    answer += 1
  end
end

answer = -1 unless a.min == 1
puts answer
