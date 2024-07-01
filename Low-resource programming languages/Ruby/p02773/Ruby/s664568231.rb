n = gets.to_i

dic = {}
n.times do
  s = gets.strip
  unless dic[s]
    dic[s] = 1
  else
    dic[s] += 1
  end
end

max = dic.values.max
result = dic.select { |k, v| v == max }.keys
puts result.sort