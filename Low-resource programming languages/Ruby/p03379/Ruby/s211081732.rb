N = gets.strip.split.map(&:to_i)[0]
X = gets.strip.split.map(&:to_i)

sorted_x = X.sort

left = sorted_x.sort[(N-1)/2]
right = sorted_x.sort[N/2]

if(left==right)
  X.each {|element| puts left }
  exit
end

memo={}
X.each do |element|
  puts right if element <= left
  puts left if element >= right

end

