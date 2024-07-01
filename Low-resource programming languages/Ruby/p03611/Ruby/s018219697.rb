def main()
  n = gets.chomp.to_i
  x = gets.chomp.split(' ').map(&:to_i)
  dic = Hash.new(0)
  for i in 0..n-1 do
    dic[x[i]] = dic[x[i]] + 1
    dic[x[i]-1] = dic[x[i]-1] + 1
    dic[x[i]+1] = dic[x[i]+1] + 1
  end
  ans_k,ans_v = dic.max_by{|k,v| v}
  puts ans_v
end

main()