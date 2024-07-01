n = gets.to_i
dic = {}

max = 1

n.times do 
  s = gets.chomp
  if dic.has_key?(s)
    dic[s] += 1
    max = [max, dic[s]].max
  else
    dic[s] = 1
  end
end


dic.select{|k, v| v == max}.sort.to_a.each do |a, b|
  puts a
end
