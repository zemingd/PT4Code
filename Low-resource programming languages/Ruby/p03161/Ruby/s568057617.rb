class Chokudai
    def read()
        @inputs = STDIN.readlines.map{|line|line.strip.split()}
    end

    def think()
        input = @inputs.shift
        @n = input[0].to_i
        @k = input[1].to_i
        @h_list = @inputs.shift.map{|line|line.to_i}
        @dp = Array.new(@n, 0)
        inf = 10 ** 10
        @h_list.each_index do |i|
            if i == 0 then
                @dp[i] = 0
            else
                @dp[i] = inf
                [i, @k].min.times do |t|
                    @dp[i] = [@dp[i], @dp[i - (t + 1)] + (@h_list[i] - @h_list[i - (t + 1)]).abs].min
                end
            end
        end
    end

    def answer
        puts(@dp.pop)
    end
end

chokky = Chokudai.new
chokky.read
chokky.think
chokky.answer