class Chokudai
    def initialize(n)
        @root_size = []
        (n + 1).times do |i|
            @root_size.push([i, 1])
        end
        @usage_list = [n * (n - 1) / 2]
    end

    def connect(a, b)
        ret_size = 0
        ua = self.search(a)
        ub = self.search(b)
        ra = ua[0]
        rb = ub[0]
        if @root_size[ra][0] != @root_size[rb][0] then
            ret_size = @root_size[ra][1] * @root_size[rb][1]
            if @root_size[ra][1] > @root_size[rb][1] then
                self.update(ra, ub)
            else
                self.update(rb, ua)
            end

        end
        @usage_list.unshift(@usage_list[0] - ret_size)
    end

    def update(root, joined)
        @root_size[root][1] += @root_size[joined[0]][1]
        while joined.size > 0
            s = joined.pop
            @root_size[s][0] = root
            @root_size[s][1] = 0
        end
    end

    def search(x)
        temp = x
        union = [x]
        while @root_size[temp][0] != temp
            temp = @root_size[temp][0]
            union.unshift(temp)
        end
        return union
    end

    def answer
        @usage_list.shift
        @usage_list.each do |usage|
            puts(usage)
        end
    end
end
inputs = STDIN.readlines.map{|line|line.strip.split()}
line = inputs.shift

n = line[0].to_i
m = line[1].to_i

chokudai = Chokudai.new(n)
inputs.reverse.each do |input|
    a = input[0].to_i
    b = input[1].to_i

    chokudai.connect(a, b)
end
chokudai.answer