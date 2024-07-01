n=gets.to_i
aS=Array.new(n)
gets.split.map(&:to_i).each_with_index do |a,index|
  aS[(a-1)]=(index+1)
end
puts aS.join(" ").to_s