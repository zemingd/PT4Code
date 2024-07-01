a,b=gets.split.map(&:hex).map(&:to_s)
puts [?<,?>,'=='].find{|x| eval(a+x+b)}.chars.uniq.join