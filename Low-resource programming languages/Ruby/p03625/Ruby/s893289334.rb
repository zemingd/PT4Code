def main()
  n = gets.chomp.to_i
  x = gets.chomp.split(' ').map(&:to_i)
  dic = Hash.new(0)
  for i in 0..n-1 do
    dic[x[i]] = dic[x[i]] + 1
  end
  target1 = dic.select{|k,v| v >=2}.keys.sort.reverse
  target2 = dic.select{|k,v| v >=4}.keys.sort.reverse
  ans1 = 0
  if target2.size != 0
    ans1 = target2[0]*target2[0]
  end
  if target1.size < 2
    puts [0,ans1].max
  else
    puts [target1[0]*target1[1],ans1].max
  end
end

main()