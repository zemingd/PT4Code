
N, K = gets.chomp.split(' ').map { |aa| aa.to_f }

sum = []
(1..N).each do |n|
  x = 0
  x += 1 while n * (2**x) <= K
  sum << (
    ((1 /2) ** x
    )
  )
end
printf('%.10f', sum.sum / N)
