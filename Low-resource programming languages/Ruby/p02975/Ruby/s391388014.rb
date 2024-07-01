require 'pp'
require 'prime'
require 'set'

n = gets.chomp!.to_i
a_n = gets.chomp!.split(" ").map(&:to_i)

max_digit = 0
a_n_bin = []

a_n.each do |i|
    chars = i.to_s(2).chars
    digit = chars.length
    a_n_bin << chars.reverse
    if digit > max_digit
        max_digit = digit
    end
end

#pp max_digit
#pp a_n_bin

ok = true

max_digit.times do |i|
    zero_count = 0
    one_count = 0
    a_n_bin.length.times do |j|
        a_n_bin[j][i] ||= "0"
        if a_n_bin[j][i] == '0'
            zero_count += 1
        elsif 
            one_count += 1
        end
    end

    #pp zero_count
    #pp one_count

    if one_count == 0
        # OK
    elsif zero_count * 2 == one_count
        # OK
    else
        # NG
        ok = false
        break
    end

    if !ok
        break
    end
end

puts ok ? "Yes" : "No"
