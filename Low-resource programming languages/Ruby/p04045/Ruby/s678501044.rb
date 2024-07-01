n,k = gets.chomp.split().map(&:to_i)
d = gets.chomp.split

while true
  if d.any?{|e| n.to_s.include?(e)}
    n += 1
  else
    puts n
    exit
  end
end