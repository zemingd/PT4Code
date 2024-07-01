# Problem https://atcoder.jp/contests/abc053/tasks/abc053_b
# Ruby 1st Try
si = gets.chomp.split('')
lengthm = si.size-1
apos = 0
zpos = si.size-1
0.step(lengthm,+1){|j|
    if si[j] == 'A'
        apos = j
        break
    end
}
lengthm.step(0,-1){|j|
    if si[j] == 'Z'
        zpos = j
        break
    end

}
# p zpos
# p apos
answer = (zpos-apos)+1
puts(answer)
