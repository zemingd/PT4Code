n = gets.chomp.to_i
mm = (n ** 0.5).floor
ans = Float::INFINITY
    1.upto(mm) do |i|
        amari = n % i
        if amari == 0
            kazu = n / i
             ans = [ans,kazu].min
        end
    end
    puts ans.to_s.size