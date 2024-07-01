N = gets.chomp.to_i
A = Array.new(N) { Array.new }
N.times do |i|
  a = gets.chomp.to_i
  a.times do
    x,y = gets.chomp.split.map(&:to_i)
    A[i] << [x,y]
  end
end

ans = 0
[0, 1].repeated_permutation(N) do |arr|
  ok = true
  A.each_with_index do |a, index|
    a.each do |x, y|
      if arr[index] == 1 && arr[x-1] != y 
        ok = false
      end
    end
  end
  ans = [arr.count(1),ans].max if ok
end
puts ans
