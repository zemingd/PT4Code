class Chokudai
    def read()
        @inputs = STDIN.readlines.map{|line|line.strip.split()}
        input = @inputs.shift
        @n = input[0].to_i
        @k = input[1].to_i
        @h_list = @inputs.shift.map{|line|line.to_i}
        @dp = Array.new(@n, -1)
    end

    def think()
        dfs(0, @k)
    end

    def dfs(i, step)
        if i >= @n then
            return
        end
        if i == 0 then
            @dp[i] = 0
            step.times do |t|
                dfs(@k - t + i, @k - t)
            end
        else
            diff = (@h_list[i - step] - @h_list[i]).abs
            if @dp[i] == -1 || @dp[i] - @dp[i - step] > diff then
                @dp[i] = @dp[i - step] + diff
                step.times do |t|
                    dfs(@k - t + i, @k - t)
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