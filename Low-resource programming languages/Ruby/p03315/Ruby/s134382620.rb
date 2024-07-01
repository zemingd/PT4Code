    TABLE = { '-' => -1, '+' => +1 }
    puts gets.chomp.each_char.map { |c| TABLE[c] }.inject(:+)