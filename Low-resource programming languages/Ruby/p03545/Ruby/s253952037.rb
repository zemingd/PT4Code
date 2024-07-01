a = gets.chomp.split('')
['-', '+'].repeated_permutation(3) do |e|
    s = ""
    (a.size() - 1).times {|i| s += a[i] + e[i]}
    s += a[-1]
    if eval(s) == 7
        puts "#{s}=7"
        break
    end
end
