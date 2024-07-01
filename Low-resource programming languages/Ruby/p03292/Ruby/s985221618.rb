a=gets.split.map(&:to_i)
b=Array.new
b.push((a[0]-a[1]).abs+(a[1]-a[2]).abs)
b.push((a[0]-a[2]).abs+(a[1]-a[2]).abs)
b.push((a[1]-a[0]).abs+(a[0]-a[2]).abs)
b.push((a[1]-a[2]).abs+(a[0]-a[2]).abs)
b.push((a[2]-a[0]).abs+(a[1]-a[0]).abs)
b.push((a[2]-a[1]).abs+(a[1]-a[0]).abs)
p b.min