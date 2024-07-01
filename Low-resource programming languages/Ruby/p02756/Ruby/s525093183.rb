S = gets.chomp
Q = gets.to_i

flip_cnt = 0

head = []
tail = []

Q.times do
  t, f, c = gets.chomp.split

  if t == '1'
    flip_cnt += 1
  else
    if f == '1'
      if flip_cnt % 2 == 0
        head.unshift(c)
      else
        tail.push(c)
      end
    else
      if flip_cnt % 2 == 0
        tail.push(c)
      else
        head.unshift(c)
      end
    end
  end
end

if flip_cnt % 2 == 0
  puts head.join + S + tail.join
else
  puts (head.join + S + tail.join).reverse
end
