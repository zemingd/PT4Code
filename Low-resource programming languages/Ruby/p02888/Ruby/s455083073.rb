n = gets.strip.to_i
ll = gets.strip.split.map(&:to_i).sort

result=0
(n-2).times do |i|
  a=ll[i]
  (i+1...n-1).each do |j|
    b=ll[j]
    ab = a+b
    idx=ll.bsearch_index {|e| e>= ab}
    if idx.nil?
      result += (n-j-1)
    else
      result+=(idx-j-1)
    end
  end
end

p result
