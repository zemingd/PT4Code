n,k,q=gets.chomp.split(" ").map(&:to_i)
score=Array.new(n){k}
q.times do|i|
  score[gets.to_i-1]+=1
end
max=score.max
n.times do|i|
  if(score[i]-q >0)
    puts "Yes"
  else
    puts "No"
  end
end