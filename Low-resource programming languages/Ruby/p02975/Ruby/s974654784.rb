
def a_XOR_Circle
    bin_digits = Array.new(1000000000.to_s(2).length+1, 0)

    n = gets.chomp.to_i
    gets.chomp.split(/\s/).map{|x|
        idx = 1
        x.to_i.to_s(2).reverse.each_char do |c|
            bin_digits[idx] += 1 if c == '1'
            idx += 1
        end
    }

    bin_digits.delete_at(0)
    bin_digits.each do |d|
        if d.odd?
            puts 'No'
            exit
        end
    end

    puts 'Yes'
end

a_XOR_Circle
