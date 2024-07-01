s = gets.chomp
sa = 10000
for i in 0..(s.length-3) do
  hoge = (753 - s[i..(i+2)].to_i).abs
  if (sa > hoge)
    sa = hoge
  end
end
puts sa