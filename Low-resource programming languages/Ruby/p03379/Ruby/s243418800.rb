n = gets.to_i
x = gets.split.map(&:to_i)
tmp = x.sort
hoge = tmp[n/2]
foo = tmp[n/2-1]
x.each do |i|
  if i <= foo
    puts hoge
  else
    puts foo
  end
end
