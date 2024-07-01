# after reading explanation
gets
l = gets.split.map(&:to_i)
l.sort!.uniq!
n = l.length
ans = 0
[*0..n-1].reverse.each{|i|
  [*0..i-1].reverse.each{|j|
    [*0..j-1].reverse.each{|k|
      ans += 1 if l[i]<l[j]+l[k]
    }
  }
}
p ans