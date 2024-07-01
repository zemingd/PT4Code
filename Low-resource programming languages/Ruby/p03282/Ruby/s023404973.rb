S = gets.chomp
K = gets.to_i
# binding.pry
S.size.times do |i|
  if S[i] != "1" && i + 1 < K
    puts S[i]
    exit
  elsif S[i] == "1" && i + 1 >= K
    puts "1"
    exit
  end
end
puts "1"