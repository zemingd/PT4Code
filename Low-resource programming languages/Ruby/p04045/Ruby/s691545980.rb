n, k = gets.split(" ").map(&:to_i)
dis = gets.split(" ").map(&:to_i)

n.step(9999, 1) do |i|
  num_ary = i.to_s.split("").map(&:to_i) - dis
  next if num_ary.size == 0
  num = num_ary.join.to_i(10)
  if n <= num
    puts num
    break
  end
end