a=gets.chomp
s=[]
for i in 3..a.size
  [3,5,7].repeated_permutation(i).to_a.each{|j|
    s << j.join.to_i if j.uniq.size==3
  }
end
s.sort!
puts s.bsearch_index{|x| x>a.to_i} || s.size
