n = gets.to_i
hs = Hash.new(0)
bf = nil
n.times do |_|
  w = gets.chomp
  if bf.nil? || bf[-1] == w[0]
    bf = w
    hs[w] += 1
  else
    puts "No"
    exit
  end
end

puts (hs.values.any? {|v| v > 1 })? "No" : "Yes"