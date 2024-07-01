S = gets.chomp
ans,l = [],0
S.chars do |value|
    if value =~ /[AGTC]/
        l += 1
    else
        l = 0
    end
    ans << l
end
puts ans.max
