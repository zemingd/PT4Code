##templete
n = gets.chomp.to_i
s = gets.chomp.split("")


def group(a)
  head = a[0]
  count = 0
  lst = []
  for i in a do
    if head == i
      count += 1
    else
      lst.push(count)
      head = i
      count = 1
    end
  end
  lst.push(count)
  lst.unshift(0) if a[0] == "."
  lst.push(0) if lst.length % 2 == 0
  return lst
end

def sum_white_black(lst)
  black = 0
  white = 0

  for i in 0..lst.length-1 do
    black += lst[i] if i % 2 == 0
    white += lst[i] if i % 2 == 1
  end

  return [black, white]
end

lst = group(s)
arr = []
sum_b, sum_w = sum_white_black(lst)
if sum_w == 0
  puts 0
  exit 0
end
black = 0
white = sum_w
ans = 1000000000
for i in 0..lst.length-1 do
  black += lst[i] if i % 2 == 0
  white -= lst[i] if i % 2 == 1
  ans = ans < (black + white) ? ans : (black + white)
end

puts ans
