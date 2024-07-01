n,q=gets.chomp.split.map(&:to_i)
s=gets.chomp.gsub(/AC/, "aC")
que=[]
q.times{que<< gets.chomp.split.map(&:to_i)}
q.times{|aa|
  ss= s[que[aa][0]-1,que[aa][1]-que[aa][0]+1]
  p ss.include?("aC")?ss.count("a"):0
}