abc = [1, 2, 3]
2.times do
  abc.delete(gets.to_i)
end

p abc[0]