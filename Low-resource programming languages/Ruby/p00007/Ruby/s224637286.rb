while str = gets
  n = str.to_i
  ans = 100000

  for i in 1..n
    ans *= 1.05;
    ans = (ans / 1000.0).ceil * 1000.0;
  end

  puts ans.to_i
end