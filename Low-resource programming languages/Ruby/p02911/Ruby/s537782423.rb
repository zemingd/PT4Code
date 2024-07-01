n,k,q = gets.split.map(&:to_i)
hito = Array.new(n,k-q)
q.times do
  g = gets.to_i
  hito[g - 1] += 1
end

hito.each do |a|
  if a > 0
    puts :Yes
  else
    puts :No
  end
end