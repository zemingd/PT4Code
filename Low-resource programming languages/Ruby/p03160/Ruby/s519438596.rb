class Chokudai
    def read()
        @inputs = STDIN.readlines.map{|line|line.strip.split()}
    end

    def think()
        @n = @inputs.shift[0].to_i
        @h_list = @inputs.shift.map{|line|line.to_i}
        @dp = Array.new(@n, 0)
        @h_list.each_index do |i|
            if i == 0 then
                @dp[i] = 0
            elsif i == 1 then
                @dp[i] = @dp[i - 1] + (@h_list[i] - @h_list[i - 1]).abs
            else
                @dp[i] = [@dp[i - 1] + (@h_list[i] - @h_list[i - 1]).abs, @dp[i - 2] + (@h_list[i] - @h_list[i - 2]).abs].min
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