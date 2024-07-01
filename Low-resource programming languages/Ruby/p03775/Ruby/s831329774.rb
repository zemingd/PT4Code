require 'prime'
N = gets.to_i
# puts Prime.prime?(N)

if Prime.prime?(N)
  puts N.to_s.size
  exit
end
pre = Math.sqrt(N).floor
pre.downto(1) do |pr|
  if N % pr == 0
    puts (N / pr).to_s.size
    exit
  end
end