n=gets.to_i
line=gets.chomp.split().map(&:to_i)
answer=[]
line.each_with_index do |l,index|
  answer[l-1]=index+1
end
puts answer.join(" ")