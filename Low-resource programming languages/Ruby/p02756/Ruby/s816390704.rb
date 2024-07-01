s = gets.chomp
q = gets.chomp.to_i
qs = q.times.map { gets.chomp.split(' ') }

rev = false
pref = []
suff = []

qs.each do |t, f, c|
    if t == '1'
        rev = !rev
        next
    end

    if f == '1'
        (!rev ? pref : suff) << c
    else
        (rev ? pref : suff) << c
    end
end

if !rev
    puts pref.reverse.join + s + suff.join
else
    puts (pref.reverse.join + s + suff.join).reverse
end
