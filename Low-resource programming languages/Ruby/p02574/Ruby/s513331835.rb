class Osa_k
    # @parm {number} n - 素因数分解したい値の中での最大値
    def initialize(n)
        @min_factor = [*0..n]
        i = 2
        while i * i <= n do
            if @min_factor[i] == i then
                j = 2
                while i * j <= n do
                    @min_factor[i*j] = i if @min_factor[i*j] > i
                    j += 1
                end
            end
            i += 1
        end
    end

    # @parm {number} m - 素因数分解したい値
    # @return {array} res - mの素因数群
    def factor(m)
        res = []
        tmp = m
        while tmp > 1 do
            res << @min_factor[tmp]
            tmp /= @min_factor[tmp]
        end
        return res.uniq
    end
end

MAX = 10 ** 6 + 10
n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
osa_k = Osa_k.new(MAX)
res = a[0]
h = Hash.new(0)
is_pairwise_coprime = true
n.times do |i|
    if is_pairwise_coprime then
        osa_k.factor(a[i]).each do |num, cnt|
            if h.has_key?(num) then
                is_pairwise_coprime = false
                break
            end
            h[num] += 1
        end
    end
    res = res.gcd(a[i])
end
 
if is_pairwise_coprime then
    puts "pairwise coprime"
elsif res == 1 then
    puts "setwise coprime"
else
    puts "not coprime"
end