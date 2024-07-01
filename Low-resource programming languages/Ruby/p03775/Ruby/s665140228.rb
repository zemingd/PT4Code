n = gets.to_i
 
Math.sqrt(n).to_i.upto(n) do |i|
  if n % i == 0
    puts i.to_s.size
    exit
  end
end