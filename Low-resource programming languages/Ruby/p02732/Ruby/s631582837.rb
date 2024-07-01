n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

a.each_with_index{ |x, i|
  tem = a.dup
  tem.delete_at(i)
  ans = 0
  tem = tem.group_by{|i| i}
  tem.each{|key, value|
    ans += ((value.count) *  (value.count - 1))/2
  }
  p ans == 1 ? 0 : ans
}
