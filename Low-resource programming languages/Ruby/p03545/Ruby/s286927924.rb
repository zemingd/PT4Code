S=gets.chomp.chars

%w(- +).repeated_permutation(3) do |a|
    s = S.zip(a).join
    if eval(s) == 7
        puts(s+'=7')
        exit 0
    end
end
