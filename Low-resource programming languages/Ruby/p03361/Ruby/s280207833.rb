H, W = gets.split(" ").map(&:to_i)
s=[]
H.times do
  s.push(gets.chomp)
end
rest = []
cnt = 0
0.upto(H-1) do |i|
  0.upto(W-1) do |j|
    next if s[i][j] == "."
    above = i-1>=0 ? s[i-1][j] : "."
    below = i+1<=H-1 ? s[i+1][j] : "."
    left = j-1>=0 ? s[i][j-1] : "."
    right = j+1<=W-1 ? s[i][j+1] : "."
    if above == "." && below == "." && left == "." && right == "."
      puts "No"
      exit
    end
  end
end
puts "Yes"