# _n = gets.to_i
# ps = gets.split.map(&:to_i).reverse
# puts "#{ps}"
#
# count = 0
#
#
# ps.sort do |a,b|
#   puts "#{a<=>b}"
#   if (a<=>b) == -1
#     count += 1
#     if count > 1
#       puts "NO"
#       exit 0
#     end
#   end
#
#   #戻り値は必要でこれ
#   a<=>b
# end
#
# puts "#{ps}"
#
# puts "YES"

_n = gets.to_i
ps = gets.split.map(&:to_i)
count = 0
tntn = 51
pokotin = 0

ps.each_with_index do |i, k|
  for j in k+1..ps.length-1
    if i > ps[j]
      count +=1
      if tntn > ps[j]
        tntn = ps[j]
        pokotin = j
      end
    end

  end

  if count >1
    tmp = ps[k]
    ps[k] = tntn
    ps[pokotin] = tmp
    break
  end
end


if count > 0
  ps.each_with_index do |i, k|
    for j in k+1..ps.length-1
      if i > ps[j]
        puts "NO"
        exit 0
      end
    end
  end
end


puts "YES"