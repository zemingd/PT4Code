n=gets.to_i
kotae=n / 2
if n % 2==1
  # n を2でわったあまりが1のとき→きすうのとき
  kotae = kotae + 1
end

puts kotae
