n, m = gets.split.map(&:to_i)
points = gets.split.map(&:to_i)
difs = []
if m==1 or m<=n
    p 0
else
    points.sort.each_cons(2){|i, j| difs.push((i-j).abs)}
    p difs.sort.slice(0, m-n).inject(:+)
end