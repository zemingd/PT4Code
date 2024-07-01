N,X = gets.split.map(&:to_i)
A = gets.split.map(&:to_i).sort

i = A.bsearch_index {|a| X <= a }
case i
when nil
  ans = X - A[-1]
when 0
  ans = A[i] - X
else
  ans = X - A[i-1]
  if X <= ans
    ans = A[i] - X
  else
    ans = [ans, A[i] - X].min
  end
end
puts ans