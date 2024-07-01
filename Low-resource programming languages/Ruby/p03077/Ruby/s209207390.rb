ae_ary = Array.new(6, 0)
ae_ary[5] = n = gets.to_i
tra = []
5.times { tra << gets.to_i }
tra.reverse!
count = 0
until ae_ary[0] == n
  tra.each_index do |i|
    move = [ae_ary[i+1], tra[i]].min
    ae_ary[i+1] -= move
    ae_ary[i] += move
  end
  count += 1
end
puts count
