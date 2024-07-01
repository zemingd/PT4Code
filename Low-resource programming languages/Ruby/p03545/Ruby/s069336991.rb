pattern = gets.split('').map(&:to_i)
pattern = [pattern[0]].product(*pattern[1..3].map{|x|[x, -x]})
print(pattern.map{|ary| ary + [ary.inject(:+)]}.keep_if{|ary| ary[4] == 7 }[0].map.with_index{|n, i| (i==0 ? '' : (i==4 ? '=' : (n<0 ? '' : '+'))) + n.to_s}.join(''))
