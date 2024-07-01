counter=gets.to_i
target=gets.chomp.split().map(&:to_i)

min=0
answer=0
counter.times do |count|
  if count == 0 || min>target[count]
    min=target[count]
    answer=answer+1
  end    
end  
puts answer