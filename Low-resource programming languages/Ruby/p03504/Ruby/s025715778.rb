n,c = gets.split.map(&:to_i)

t = []
n.times {t << gets.split.map(&:to_i)}
t.sort!{|a,b| a[0] <=> b[0]}

rec = []
ch_rec = Array.new(c+1)
t.each do |s,t,ch|
    if ch_rec[ch] && rec[ch_rec[ch]][0] <= s
        rec[ch_rec[ch]][0] = t
    else
        j = true

        rec.each_with_index do |rec_e,index|
            if rec_e[0] < s
                ch_rec[rec_e[1]] = nil
                ch_rec[ch] = index
                rec[index] = [t,ch]
                j = false
                break
            end
        end

        if j
            rec << [t,ch]
            ch_rec[ch] = rec.size - 1
        end
    end
end

puts rec.size