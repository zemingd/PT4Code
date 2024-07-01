n,q=gets.chomp.split.map(&:to_i)
s=gets.chomp.to_s
que=[]
q.times{que<< gets.chomp.split.map(&:to_i)}
q.times{|aa|
  p s[que[aa][0]-1,que[aa][1]-que[aa][0]+1].scan(/AC/).size
}