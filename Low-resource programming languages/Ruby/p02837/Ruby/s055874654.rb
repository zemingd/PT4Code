N = gets.chomp.to_i
A = Array.new(N) { Array.new }
N.times do |i|
  a = gets.chomp.to_i
  a.times do
    A[i].push(gets.chomp.split.map(&:to_i))
  end
end

ans = 0
[0, 1].repeated_permutation(N) do |arr| # 0:嘘つき, 1:正直者
  next_flag = false
  A.each_with_index do |a, index|
    a.each do |x, y|
      if (arr[index] == 1 && arr[x-1] != y) || (arr[index] == 0 && arr[x-1] == y) # 矛盾がある時
        next_flag = true
        break
      end
    end
    break if next_flag
  end
  next if next_flag
  num = arr.inject(:+)
  ans = num if num > ans
end
p ans
