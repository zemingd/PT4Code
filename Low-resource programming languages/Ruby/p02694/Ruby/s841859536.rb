x=gets.to_i
s=100
10000000.times do |i|
  s = (s*1.01).to_i
  if s >= x
    puts i+1
    exit(0)
  end
end