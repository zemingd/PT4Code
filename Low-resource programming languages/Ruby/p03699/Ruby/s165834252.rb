N = gets.to_i
SS = readlines.map(&:to_i)

total = SS.inject(:+)
if total % 10 == 0
  ss = SS.reject { |s| s % 10 == 0 }
  if ss.empty?
    p 0
  else
    p(total - ss.min.to_i)
  end
else
  p total
end