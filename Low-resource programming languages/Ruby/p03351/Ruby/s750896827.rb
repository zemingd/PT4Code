A,B,C,D=gets.split.map(&:to_i)
def f(a, b)
  (a-b).abs<=D
end
if f(A,C) or (f(A,B) and f(B,C))
puts 'Yes'
else
puts 'No'
end