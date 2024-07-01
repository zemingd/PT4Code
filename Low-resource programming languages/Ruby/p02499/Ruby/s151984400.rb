alpha = ("a".."z").to_a
salp = Array.new(alpha.length, 0)
while input = gets.split("")
 alpha.each do |i|
  input.each do |k|
   if input[k].downcase == alpha[i]
    salp[i] += 1
   end
  end
 end
end

alpha.each do |i|
 puts "#{alpha[i]} : #{salp[i]}"
end