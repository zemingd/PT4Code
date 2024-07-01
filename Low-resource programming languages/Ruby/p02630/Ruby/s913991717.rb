def sum a_dic
  s = 0
  a_dic.each_with_index do |k,v|
    s+= k*v
  end
  s
end
gets
a = gets.strip.split(" ").map(&:to_i)
a_dic = Array.new(10001, 0)
a.each do |i|
  a_dic[i] += 1
end

q = gets.strip.to_i
q.times do |i|
  b,c = gets.strip.split(" ").map(&:to_i)
  a_dic[c] = a_dic[b]+a_dic[c]
  a_dic[b] = 0
  puts sum(a_dic)
end

