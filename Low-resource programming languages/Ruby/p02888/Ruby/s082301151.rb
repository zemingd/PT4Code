n = gets.chomp.to_i
l = gets.chomp.split.map(&:to_i)

l.sort!
ans = 0

(0...n-1).each do |ai|
  (ai+1...n-1).each do |bi| 
    a,b = l[ai],l[bi]
    ci = l.bsearch_index{|c| c >= a+b}
    if ci.nil?
      ans += n - 1 - bi
    else
      ans += ci - 1 - bi
    end
  end
end

puts ans
