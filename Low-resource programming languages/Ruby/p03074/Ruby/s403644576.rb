n,k=gets.chomp.split(" ").map(&:to_i)
s=gets.chomp.split("")

indexes=[]
s.each_with_index{|si,i|
  if i==0
    indexes << i
  else
    indexes << i if si != s[i-1]
  end
}
indexes << n
r=indexes.map.with_index{|ik,i|
  if s[ik] == "0"
    (indexes[i+2*k].nil? ? indexes[indexes.count-1] : indexes[i+2*k])-indexes[i]
  else
    (indexes[i+2*k+1].nil? ? indexes[indexes.count-1] : indexes[i+2*k+1])-indexes[i]
  end
}.max
print r
