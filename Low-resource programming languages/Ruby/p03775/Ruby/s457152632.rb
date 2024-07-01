N = gets.to_i
pre = Math.sqrt(N).ceil
(pre..N).each do |pr|
  if N % pr == 0
    puts pr.to_s.size
    exit
  end
end