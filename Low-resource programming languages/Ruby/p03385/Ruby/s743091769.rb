a,b,k = gets.split(" ").map!{|i| i.to_i}
if a+k-1 < b-k+1
  a.upto(a+k-1) do |j|
    puts j
  end
  (b-k+1).downto(b) do |l|
    puts l
  end
else a.upto(b) do |u|
    puts u
  end
end