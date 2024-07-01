a=(0...3).flat_map{gets.split.map(&:to_i)}
gets
b=ARGF.map(&:to_i)

a.map!{|x| b.include?(x) }


r = (0...3).any?{|x| a[x*3+0] &&  a[x*3+1] &&  a[x*3+2] } || (0...3).any?{|x| a[x+0] &&  a[x+3] &&  a[x+6] } || (a[0] &&  a[4] &&  a[8]) || (a[2] &&  a[4] && a[6])

print (r ? 'Yes' : "No")