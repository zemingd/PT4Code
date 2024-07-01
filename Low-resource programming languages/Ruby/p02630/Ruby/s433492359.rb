
gets
a = gets.strip.split(" ").map(&:to_i).sort
a_dic = {}
a.each do |i|
  a_dic[i] = a_dic[i].nil? ? 1 : a_dic[i]+1
end
q = gets.strip.to_i
ans = []

sum = a_dic.map {|key, val| key * val }.sum
q.times do |i|
  b,c = gets.strip.split(" ").map(&:to_i)
  unless a_dic[b].nil?
    a_dic[c] =  a_dic[c].nil? ? a_dic[b] : a_dic[b]+a_dic[c]
    ans[i]= i==0 ? sum+ (c-b)*a_dic[b] : ans[i-1] + (c-b)*a_dic[b]
    a_dic.delete(b)
  else
    ans[i] = i ==0  sum ? ans[i-1]
  end
end
ans.each do |s|
  puts s
end