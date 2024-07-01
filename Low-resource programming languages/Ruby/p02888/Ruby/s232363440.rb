n = gets.chomp.to_i
l = gets.chomp.split.map(&:to_i).sort

ans = 0
(2..(n-1)).each do |i|
  (1..(i-1)).each do |j|
    rest = l[0..(j-1)]
    pos = rest.bsearch_index{ |x| x > l[i]-l[j] }
    pos = j if pos.nil?
    ans += j - pos
  end
end

puts(ans)