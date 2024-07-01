K = gets.to_i
L, H = gets.chomp.split(' ').map(&:to_i)
range = L..H
K.step(H, K) do |n|
  if range.include?(n)
    puts 'OK' 
    exit
  end
end
puts 'NG'