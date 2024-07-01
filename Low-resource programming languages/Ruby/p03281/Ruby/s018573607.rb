n = gets.to_i

def has_8divs?(i)
  cnt = 0
  (1..i).each do |j|
    if i%j == 0
      cnt+=1
    end
   end
  return cnt == 8 ? true : false
end

ary = []
(0..n).each do |i|
  if i.odd?
  	ary << i if has_8divs?(i)
  end
end

p ary.size