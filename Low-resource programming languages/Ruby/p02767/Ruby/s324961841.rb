a=gets.to_i
line=gets.chomp.split.map(&:to_i)
maxer= line.max
answers=[]
maxer.times do |c|
  d= c+1
  ans=0
  line.map do |l|
    ans +=(l-d).abs**2
  end  
  answers<<ans
end  
puts answers.min