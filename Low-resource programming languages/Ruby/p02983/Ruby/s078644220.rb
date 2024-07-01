datas = gets.split(" ").map{|n|n.to_i}
l = datas[0]
r = datas[1]


if r - l >= 2019
  puts "0"
else
  test_l = l % 2019
  test_r = r % 2019
  if l > r || test_l == 0 || test_r == 0
    puts "0"
  else
    ans = 2020
    for lll in test_l..(test_r-1)
      for rrr in (lll+1)..(test_r)
        if ans > (lll * rrr) % 2019
          ans = (lll * rrr) % 2019
        end
      end
    end

    puts ans.to_s
  end
end
