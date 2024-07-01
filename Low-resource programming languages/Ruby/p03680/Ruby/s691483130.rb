N = gets.to_i
A = N.times.map { gets.to_i }

pushed = [1]

loop do
  current = A[pushed.last - 1]
  if current == 2
    puts pushed.size
    exit
  elsif pushed.include?(current)
    puts -1
    exit
  else
    pushed << current
  end
end