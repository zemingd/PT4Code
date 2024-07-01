require 'prime'
N = gets.to_i
# puts Prime.prime?(N)
if Prime.prime?(N)
  puts N.to_s.size
  exit
end
pre = Math.sqrt(N).ceil
(pre..N).each do |pr|
  if N % pr == 0
    puts pr.to_s.size
    exit
  end
end