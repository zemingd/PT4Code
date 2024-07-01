h = gets.to_i

(0..40).each do |i|
  if h < 2**i
    puts 2**i - 1
    exit
  end
end