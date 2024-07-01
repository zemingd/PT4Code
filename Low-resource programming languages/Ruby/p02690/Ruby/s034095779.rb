X = gets.to_i
sq = []
prev = 0
0.upto(100000) do |i|
  d = i*i*i*i*i
  sq << d
  break if d - prev > 1000000000
  prev = d
end

sq2 = sq.dup
sq.each do |a|
    sq2.shift
    sq2.each do |b|
        if a - b == X
            puts "#{sq.index(a)} #{sq.index(b)}"
            exit
        elsif (-a) - b == X
            puts "-#{sq.index(a)} #{sq.index(b)}"
            exit
        elsif a + b == X
            puts "#{sq.index(a)} -#{sq.index(b)}"
            exit
        elsif (-a) + b == X
            puts "-#{sq.index(a)} -#{sq.index(b)}"
            exit
        end
    end
end

