N = gets.chomp.to_i
inputs = gets.chomp.split(" ").map(&:to_i)
inputs = inputs.sort.reverse
count = 0
inputs.each_with_index do |e,i|
  inputs2=inputs.dup
  inputs2.shift(i+1)
  inputs2.each_with_index do |f,j|
    inputs3 = inputs2.dup
    inputs3.shift(j+1)
    inputs3.each do |g|
      if (f + g > e)
        count +=1
      end
    end
  end
end
 
puts count
