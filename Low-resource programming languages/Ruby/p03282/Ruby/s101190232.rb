n = gets.chomp.split('').map(&:to_i)
k = gets.to_i
j = 1
n.each do |i|
  if i != 1 && j < k 
    puts i
    exit
  elsif j == k
    puts i
  end
  j += 1
end