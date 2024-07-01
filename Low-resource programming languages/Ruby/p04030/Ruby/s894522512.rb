s_data = STDIN.gets.chomp

p_data = Array.new(10)
i = j = 0
n = s_data.length

n.times{
    s = s_data[j]
    if s == "0" || s == "1"
        p_data[i] = s
        i = i + 1
    elsif s == "B" && i > 0
        i = i - 1
        p_data[i] = nil
    end
    j = j + 1
}

STDOUT.puts p_data.join