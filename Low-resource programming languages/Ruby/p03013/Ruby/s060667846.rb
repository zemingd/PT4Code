N,M = gets.split.map(&:to_i)
as = M.times.map{ gets.strip.to_i }

(M-1).times do |i|
  if as[i+1] - as[i] == 1
    puts 0
    exit
  end
end

require 'set'
as = as.to_set

paths = [1]
1.upto(N) do |i|
  if as.include?(i)
    paths[i] = 0
  else
    if i == 1
      paths[i] = paths[i-1]
    else
      paths[i] = paths[i-1] + paths[i-2]
    end
  end
end

puts paths[N] % 1000000007
