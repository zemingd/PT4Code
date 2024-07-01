s = gets.to_s.chomp.chars

["+", "-"].repeated_permutation(3) do |ops|
  
  t = s.zip(ops).flatten.join
  if eval(t) == 7
    puts t + "=7"
    exit
  end
end