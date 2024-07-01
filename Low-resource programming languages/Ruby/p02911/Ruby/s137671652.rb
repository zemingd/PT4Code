n,k,q = gets.split.map(&:to_i)

a = Array.new(n, k-q)

q.times { a[gets.chomp.to_i - 1] += 1 } 

a.each { |e|
    if e > 0
        puts "Yes"
    else
        puts "No"
    end
} 