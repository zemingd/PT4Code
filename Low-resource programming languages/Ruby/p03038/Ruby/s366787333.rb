_  = gets.to_s.split.map(&:to_i)
a  = gets.to_s.split.map(&:to_i).sort
bcs = $<.read.split.map(&:to_i).each_slice(2).sort_by{|b,c| c}

ans = 0

b, c = bcs.pop
a.each do |k|
  
  if b.nil?
    ans += k
    break if c.nil?
  elsif k < c
    ans += c
    b -= 1
    b,c = bcs.pop if b == 0
  else
    ans += k
  end
end

puts ans