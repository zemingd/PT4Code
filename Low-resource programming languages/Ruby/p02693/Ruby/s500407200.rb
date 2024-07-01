k = gets.to_i
a,b = gets.chomp.split(" ").map(&:to_i)
a.upto(b) do |x|
  if x%k==0
    puts "OK"
    exit
  end
end
puts "NG"