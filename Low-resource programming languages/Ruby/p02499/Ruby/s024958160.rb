alpha = ("a".."z").to_a
salp = Array.new(alpha.length, 0)
while true
 input = gets.split("")
 alpha.length.times do |i|
  sum = 0
  input.length.times do |k|
   if input[k].downcase == alpha[i]
    salp[i] += 1
   end
  end
 end
 break if input[input.length - 2] == "."
end

alpha.length.times do |i|
 puts "#{alpha[i]} : #{salp[i]}"
end