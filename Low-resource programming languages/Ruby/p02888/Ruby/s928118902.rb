n = gets.to_i
l = gets.split.map(&:to_i).sort

i = l.length - 1
ans = 0
while i > 1
  a = l[i]
  j = i - 1
  while j > 0
    b = l[j]
    c = l[0..(j-1)].bsearch_index { |x| x < b && x > a - b }
    ans += j - c if c
    j -=1
  end
  i -=1
end
