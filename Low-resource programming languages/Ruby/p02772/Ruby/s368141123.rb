    N = gets.to_i
    A = gets.split.map(&:to_i).select(&:even?)
    puts A.all? {|a| a % 3 == 0 || a % 5 == 0 } ? 'APPROVED' : 'DENIED'