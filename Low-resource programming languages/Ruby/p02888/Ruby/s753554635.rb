N = gets.chomp.to_i
inputs = gets.chomp.split(" ").map(&:to_i).sort
count = 0
inputs.each_with_index do |e,i|
  ((i+1)..(N-2)).to_a.each do |j|
    ((j+1)..(N-1)).to_a.reverse.each do |k|
      if inputs[i]+inputs[j] > inputs[k]
        count = count+k-j
        break
      end
    end
  end
end
 
puts count
