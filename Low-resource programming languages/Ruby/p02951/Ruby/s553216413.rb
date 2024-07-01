n = gets.chomp.to_i
h = gets.chomp.split.map(&:to_i)
if h.each_cons(2).all? {|a, b| a <= b } or h.length < 2 then
  puts "Yes"
else
  cnt = 0
  max = h.last
  h.length.downto(1) do |i|
    if (h[i-1] - max) > 1 then
      puts "No"
      exit
    else
      cnt+=1
      max = h[i-1]
    end
    if cnt > 2 then
      puts "No"
      exit
    end
  end
  puts "Yes"
end