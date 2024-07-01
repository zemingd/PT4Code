S = gets.strip.split('').map(&:to_i)
K = gets.to_i

if S.slice(0..[K-1,S.size-1].min).all?{|n| n == 1}

    puts 1
    

else

    puts S[(0..S.size-1).bsearch{|x| S[x] != 1}]

end


