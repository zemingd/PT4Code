def bb
    n = gets.chomp.to_i
    m = n.to_s.split(//).inject(0){|sum,x| sum+x.to_i}
    puts n%m == 0 ? 'Yes' : 'No'
end

bb