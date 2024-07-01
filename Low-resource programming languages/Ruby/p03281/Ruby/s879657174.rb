N = gets.to_i
cnt = 0
(1..N).step(2) do |n|
  n_dup = Marshal.load(Marshal.dump(n))
  sum = 2
  div = 2
  count = 0
  while n_dup != 1
    if n_dup % div == 0
      count += 1
      n_dup /= div
    else
      sum *= (count + 1)
      count = 0
      div += 1
    end
  end
  cnt += 1 if sum == 8
end
puts cnt