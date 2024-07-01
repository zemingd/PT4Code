A,B,C,D,E,F = gets.split.map(&:to_i)
ret = [100, 0]
0.step(F.div(100) + 1, A) do |a|
    0.step(F.div(100) + 1, B) do |b|
        next if a == 0 && b == 0
        0.step(F - 100*a - 100*b, C) do |c|
            0.step(F - 100*a - 100*b, D) do |d|
                total = 100*a + 100*b + c + d
                sugar = c + d
                if total <= F && sugar.fdiv(total) <= E.fdiv(100)
                    ret[0], ret[1] = total, sugar if sugar.fdiv(total) >  ret[1].fdiv(ret[0])
                end
            end
        end
    end
end
puts "#{ret[0]} #{ret[1]}"