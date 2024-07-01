a,b=gets.split.map(&:hex)
puts [?<,?>,'=='].find{|x| eval(a+x+b)}.uniq