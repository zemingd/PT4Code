input = gets.chomp.split("")
ans = ""

[0, 1].repeated_permutation(3) do |bits|
    # 0 -> +, 1 -> -
    formula = []
    bits.each_with_index do |bit, idx|
        if bit == 0 then
            formula << input[idx] + "+"
        else
            formula << input[idx] + "-"
        end
    end
    formula << input[3]
    ans = formula.join("")
    break if eval(ans) == 7
end

puts ans + "=7"