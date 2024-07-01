def main()
  n = gets.chomp.to_i
  x = gets.chomp.split(' ').map(&:to_i)
  dic = Hash.new(0)
  for i in 0..n-1 do
    dic[x[i]] = dic[x[i]] + 1
  end
  target = dic.select{|k,v| v >=2}.keys.sort.reverse
  if target.size < 2
    puts 0
  else
    puts target[0]*target[1]
  end
end

main()