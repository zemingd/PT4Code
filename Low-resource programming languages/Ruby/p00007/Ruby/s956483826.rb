while str = gets
  n = str.to_i
  ans = 100000

  for i in 1..n
    ans *= 1.05;
    if ans % 1000 > 0 then
      ans = ans - ans % 1000 + 1000;
    end
  end

  puts ans.to_i
end