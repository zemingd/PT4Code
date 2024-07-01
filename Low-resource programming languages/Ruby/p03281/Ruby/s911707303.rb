class Integer
    def yakusuu
        list = Array.new
        n = self.clone
        i = 2
        while n > 1 do
            if n % i == 0
                list << i
                n /= i
            else
                i += 1
            end
        end
        list
    end
end

def check(n)
    if n.yakusuu.size == 3 && n.yakusuu.uniq.size == 3
        @count += 1
    elsif n.yakusuu.size == 4 && n.yakusuu.uniq.size == 2
        @count += 1
    end
end

N = gets.to_i
@count = 0
(1..N).each do |n|
    next if n % 2 == 0
    check(n)
end
puts @count