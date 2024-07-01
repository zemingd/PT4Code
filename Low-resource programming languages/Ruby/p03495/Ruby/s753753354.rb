N, K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

bunpu = (1..N).map { |n|A.count(n) }
bunpu.delete(0)
bunpu.sort!


to_del_num = bunpu.size - K

if to_del_num <= 0
  puts 0
  return
end

delnum = bunpu[0..to_del_num-1].sum
puts delnum