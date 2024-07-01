x = $stdin.gets.chomp.to_i

-64.step(64) do |a|
  b5 = x - a**5
  b = b5 ** 0.2
  if b.floor == b
      print a," ",b.to_i
      exit
  end
end

