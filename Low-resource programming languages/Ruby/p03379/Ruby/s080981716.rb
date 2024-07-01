N = gets.strip.split.map(&:to_i)[0]
X = gets.strip.split.map(&:to_i)

sorted_x = X.sort

X.each do |element|
  index = sorted_x.index(element)
  if(index < N/2)
    puts sorted_x.sort[N/2]
  else
    puts sorted_x.sort[(N-1)/2]
  end
  
#  puts'---'
  
end

