N = gets.to_i
A = gets.split.map(&:to_i).sort
LIMIT = 10 ** 18

ans = 1

A.each do |a|
  ans *= a

if ans > LIMIT
  puts -1
    exit
  end
end
