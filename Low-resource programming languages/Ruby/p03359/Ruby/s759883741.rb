def main
a,b=gets.split.map(&:to_i)
for m in 1..12
    for d in 1..31
        return if (m >= a && d > b)
        $cnt += 1 if m == d
    end
end
$cnt
end
$cnt=0
main
puts $cnt