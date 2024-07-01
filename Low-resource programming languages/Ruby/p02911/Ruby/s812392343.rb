x, y, z = gets.chomp.split(" ").map(&:to_i)
sanka = Array.new(x, y-z)

z.times do
  n = gets.to_i
  sanka[n-1] += 1 
end

sanka.each do |e|
  if e > 0
    puts "Yes"
  else
    puts "No"
  end
end
