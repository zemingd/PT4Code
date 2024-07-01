class Chokudai
    S = 0
    T = 1
    def initialize()
        @counts = []
        2.times do |n|
            @counts.push(Array.new(26, 0))
        end
        @dic = Array.new(26, -1)
        @a = 'a'.ord
    end

    def solve(s, t)
        s.size.times do |i|
            si = s[i].ord - @a
            ti = t[i].ord - @a
            if @dic[ti] == -1  then
                @dic[ti] = si
            elsif @dic[ti] != si then
                return false
            end
            @counts[S][si] += 1
            @counts[T][ti] += 1
        end
        if @dic.index(-1).nil? then
            26.times do |n|
                if @counts[S][@dic[n]] != @counts[T][n] then
                    return false
                end
            end
        end
        return true
    end

    def answer(s, t)
        if self.solve(s, t) then
            puts('Yes')
        else
            puts('No')
        end
    end
end

inputs = STDIN.readlines.map{|line|line.strip.split()}
s = inputs.shift[0]
t = inputs.shift[0]

chokudai = Chokudai.new
chokudai.answer(s, t)
