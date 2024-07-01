n, k, q = gets.split.map(&:to_i)

as = Array.new(n, 0)
q.times do
  as[gets.to_i - 1] += 1
end

(1..n).each do |p|
  if k - (q - as[p - 1]) > 0
    puts "Yes"
  else
    puts "No"
  end
end
