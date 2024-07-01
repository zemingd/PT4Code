n,x = gets.strip.split.map(&:to_i)
as = gets.strip.split.map(&:to_i).sort
cnt = 0
n.times do |i|
  if x - as[i] >= 0 
    x -= as[i] 
    cnt += 1
    puts "x: #{x}, as[i]: #{as[i]}, cnt: #{cnt}"
  end
end
cnt -= 1 if x > 0
puts cnt