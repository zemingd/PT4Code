a = gets.chomp

['+', '-'].repeated_permutation(a.length-1) do |t|
  if 7 == eval(a.chars.zip(t).join)
    puts (a.chars.zip(t).join) + "=7"
    exit
  end
end