N, K = gets.split(" ").map(&:to_i)
S = gets.split("").map(&:to_i)

eq = 1
arr = []
S.reduce("") { |a, s|
  next s if a == ""
  if s == a
    eq += 1
  else
    arr << eq
    eq = 1
  end
  s
}
arr << eq 

ans = 0
arr.each_with_index { |e, i|
  a = 0
  (K * 2 + 1).times { |j|
    break if i + j > arr.size - 1
    a += arr[i + j]
  }
  ans = a if a > ans
}
puts ans
