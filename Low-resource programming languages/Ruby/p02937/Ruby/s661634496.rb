s = gets.chomp
s_len = s.length
t = gets.chomp

s_array = s.split('')
t_array = t.split('')

t_uniq_array = t_array.uniq
indexes = {}
t_uniq_array.each do |t_e|
    r = s_array.map.with_index { |e,i| e == t_e ? i : nil }.compact
    r_f = r.first
    if r_f == nil
        puts "-1"
        eixt
    end
    r.push(r_f + s_len)
    indexes[t_e] = r
end
ans = 0

memo = {}
t_uniq_array.each {|t_e| memo[t_e] = {} }

t_array.each do |t_e|
    start = ans % s_len
    a = memo[t_e][start]
    if a == nil
        a = indexes[t_e].bsearch{|i| start <= i }
        memo[t_e][start] = a
    end
    ans += (a - start + 1)
end
print ans
