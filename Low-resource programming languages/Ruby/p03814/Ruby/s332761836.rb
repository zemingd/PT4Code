# Problem https://atcoder.jp/contests/abc053/tasks/abc053_b
# Ruby 3rd Try
si = gets.chomp.split('')
answer = 0
firsta = 0
lastz = si.size-1
first = firsta
last = lastz
first.step(last,+1){ |j|
    if si[j] == 'A'
        firsta = j
        break
    end
}
last.step(first,-1){ |j|
    if si[j] == 'Z'
        lastz = j
        break
    end
}
answer = (lastz - firsta)+1
puts(answer)