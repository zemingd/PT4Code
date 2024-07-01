n,q=gets.chomp.split.map(&:to_i)
s=gets.chomp.gsub(/AC/, "aC")
que=[]
q.times{que<< gets.chomp.split.map(&:to_i)}
q.times{|aa|
  ss= s[que[aa][0]-1,que[aa][1]-que[aa][0]+1]
  ans=ss.count("a")
  ans-=1 unless ss.scan(/a$/).empty?
  p ans
}