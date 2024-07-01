datas = gets.split(" ").map{|n|n.to_i}
l = datas[0]
r = datas[1]


if r - l >= 2019
  puts "0"
else
  test_l = l % 2019
  test_r = r % 2019
  if (test_l + (r - l) >= 2019) or (test_r - (r - l) <= 0)
    puts "0"
  else
    #lについて
    l %= 2019
    if (2019 - l) < l
      l = (2019 - l)
    else
    end
    #rについて
    r %= 2019
    if (2019 - r) < r
      r = (2019 - r)
    else
      r = r
    end

    if l > r + 1
      l = r + 1
    end
    if r > l + 1
      r = l + 1
    end

    puts (l * r).to_s
  end
end
