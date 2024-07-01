n,c = gets.split.map(&:to_i)

x = []
n.times {x << gets.split.map(&:to_i)}
x.sort!{|a,b| a[0] <=> b[0]} #small s -> large s

rec = [] #recoder
ch_rec = Array.new(c+1) #which recoder recoding i channel

x.each do |s,t,ch|
    if ch_rec[ch] && rec[ch_rec[ch]][0] <= s #able to recode same ch
        rec[ch_rec[ch]][0] = t
    else
        j = true

        rec.each_with_index do |rec_e,index|
            if rec_e[0] < s #able to recode
                ch_rec[rec_e[1]] = nil
                ch_rec[ch] = index
                rec[index] = [t,ch]
                j = false
                break
            end
        end

        if j #cannot recode, add recoder
            rec << [t,ch]
            ch_rec[ch] = rec.size - 1
        end
    end
end

puts rec.size