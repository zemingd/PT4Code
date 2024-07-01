 a=gets.to_i
  line=gets.chomp.split(' ').map(&:to_i).sort!.reverse!.uniq
N=line.length
fin=[]
N.times do |i|
  N.times do |k|
    unless k==N-1-i or line[N-i-1]==0 or line.length==1

  if line[k].to_i%line[N-i-1].to_i==0 and line[k].to_i>=line[N-i-1].to_i
    
fin.push(line[k])
    
    line[N-i-1]

 
  end
  end
end
end
if line.length==1
  p 0
else
p line.length-fin.uniq.length
end