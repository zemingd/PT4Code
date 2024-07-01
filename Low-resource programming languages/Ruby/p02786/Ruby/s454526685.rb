H = gets.chop.to_i


def cnt(n, acc)
  a = n / 2

  if a >= 1
    acc += 1
    cnt(a, acc)
  else
    return acc
  end
end


if H == 1
  puts 1
else
  count = cnt(H, 0)
  arr = []

  (1..count).each do |i|
    if i == 1
      arr.push(2)
    else
      arr.push(arr[i-2] * 2) 
    end
  end

  puts arr.inject(:+) + 1
end
