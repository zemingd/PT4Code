def main()
  n = gets.chomp.to_i
  dic = Hash.new(0)
  ans = 0
  for i in 0..n-1 do
    x = gets.chomp.to_i
    if dic[x] == 0
      dic[x] = 1
    else
      dic[x] = 0
    end
  end

  dic.each_value{|t|
  ans = ans + 1 if t == 1
  }
  puts ans
end

main()