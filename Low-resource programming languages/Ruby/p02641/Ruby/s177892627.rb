X, N = gets.split(" ").map(&:to_i)
if N == 0
  puts X
else
  array = gets.split(" ").map(&:to_i)

  # p以外の数字の配列
  num = [*-100..100]
  N.times do |i|
      num.delete(array[i-1])
  end

  ary = [100]
  num.each do |i|
    if (X - i).abs < (X - ary[0]).abs
      ary.insert(0, i)
    else
      ary << i
    end
  end
  p ary[0]
end