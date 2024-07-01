L, R = gets.split.map(&:to_i)
 
ans = 2019
 
L.upto(R-1) do |i|
  (i+1).upto(R) do |j|
    mod = (i * j) % 2019
    if mod == 0
      puts 0
      exit
    end
 
    ans = mod if mod < ans
  end
end
 
puts ans