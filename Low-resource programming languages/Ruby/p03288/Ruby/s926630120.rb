def aa
    n = gets.chomp.to_i
    if n < 1200
        puts 'ABC'
    elsif n < 2800
        puts 'ARC'
    else
        puts 'AGC'
    end
end

aa
