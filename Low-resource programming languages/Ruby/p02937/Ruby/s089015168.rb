s = gets.chomp
s_len = s.length
t = gets.chomp

s_array = s.split('')
t_array = t.split('')

check = t_array.select {|c| !s_array.include?(c) }

if check.empty?
    s2 = s * 2
    t_uniq_array = t_array.uniq
    indexes = {}
    t_uniq_array.each do |t_e|
        r = (s*2).split('').map.with_index { |e,i| e == t_e ? i : nil }.compact
        indexes[t_e] = r
    end
    ans = 0
    t_array.each do |t_e|
        start = ans % s_len
        a = indexes[t_e].select{|i| start <= i }.first
        puts (a - start + 1)
        ans += (a - start + 1)
    end
    print ans
else
    puts "-1"
end