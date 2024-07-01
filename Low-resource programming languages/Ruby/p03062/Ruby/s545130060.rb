n = gets.chomp.to_i
a= gets.chomp.split.map(&:to_i)
cnt = 0
n.times { |i|
  if a[i] < 0
    cnt += 1
  end
}
sum = 0
if cnt % 2 == 0
  n.times { |i|
    sum += a[i].abs
  }
else
  min = a[0]
  n.times { |i|
    if min > a[i]
      min = a[i].abs
    end
  }
  n.times { |i|
    sum += a[i].abs
  }
  sum -= 2*min.abs
end
puts sum
# while true
#   cnt = 0
#   (0..n-2).each{ |i|
#     if a[i] + a[i + 1] < 0
#       cnt += 1
#       a[i] = -a[i]
#       a[i + 1] = -a[i + 1]
#     end
#   }
#   if cnt == 0
#     puts a.sum
#     exit
#   end
# end
