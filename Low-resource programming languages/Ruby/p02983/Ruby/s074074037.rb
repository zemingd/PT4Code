datas = gets.split(" ").map{|n|n.to_i}
l = datas[0]
r = datas[1]


if r - l >= 2019
  puts "0"
else
  if (r%2019) * (l%2019) == 0
    puts "0"
  else
    #lについて
    l %= 2019
    #rについて
    r %= 2019
    if (2019 - r) < l + 1
      r = (2019 - r)
    else
      r = l + 1
    end

    puts (l * r).to_s
  end
end
