n = gets.to_i
array = Array.new(n){Array.new}
ans = 0
n.times do |i|
  a = gets.to_i
  a.times do
    array[i] << gets.chomp.split.map(&:to_i)
  end
end
[0,1].repeated_permutation(n).each do |permu|
  cnt = 0
  flag = true
  array.each_with_index do |a,i|
    next if permu[i] == 0

    a.each do |x,y|
      if permu[x-1] != y
        flag = false
      end
    end
  end
  if flag
    ans = [permu.inject(:+),ans].max
  end
end

puts ans
      