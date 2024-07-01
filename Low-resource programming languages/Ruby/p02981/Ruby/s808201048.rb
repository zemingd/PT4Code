a = gets.strip.split.map(&:to_i)
N = a[0]
tr = a[1]
tx = a[2]

trcost = N*tr

if trcost >= tx
    puts tx
else
    puts trcost
end