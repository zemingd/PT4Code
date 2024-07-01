N = gets.chomp.to_i

Q = 2 ** N

hash = {}
N.times do |i|
  hash[i] = []
  gets.chomp.to_i.times do
    x, y = gets.chomp.split.map(&:to_i)
    hash[i] << [x-1, y]
  end
end

max = 0

[0, 1].repeated_permutation(N).each do |tf_ary|
  ans = 0
  flag = true
  tf_ary.each_with_index do |b, i|
    next unless b == 1
    hash[i].each do |ary|
      next if tf_ary[ary[0]] == ary[1]
      flag = false
      break
    end
    break if !flag
  end
  max = tf_ary.count(1) if flag && tf_ary.count(1) > max
end

p max