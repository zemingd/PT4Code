a,b,c,d=gets.split.map(&:to_i)
result =
  if a<=c
    [[b-c, d-c].min, 0].max
  elsif a>c
    [[d-a, c-a].min, 0].max
  end
p result