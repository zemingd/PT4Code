n,q=gets.chomp.split(' ').map(&:to_i)
s=gets.chomp
arry=[]
q.times { arry << gets.chomp.split(' ').map(&:to_i) }
arry.each do |a|
  print("#{s[(a[0]-1)..(a[1]-1)].scan('AC').length}"\n)
end