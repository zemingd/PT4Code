N = gets.to_i
A = gets.split.map(&:to_i)

R = []
lr = true
A.each do |a|
  if lr
    R.unshift a
  else
    R.push a
  end
  lr = !lr
end
puts N.even? ? R.reverse.join(' ') : R.join(' ')