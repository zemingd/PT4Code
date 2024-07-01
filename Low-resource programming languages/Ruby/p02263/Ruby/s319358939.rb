formula = gets.split

s = []

until formula.empty? do
    o = formula.shift
    if o.match?(/\d+/) then
        s.unshift(o.to_i)
    elsif o == "+" then
        s.unshift(s.shift + s.shift)
    elsif o == "-" then
        s.unshift(s.shift * -1 + s.shift)
    else
        s.unshift(s.shift * s.shift)
    end
    # p s
end

puts s[0]

