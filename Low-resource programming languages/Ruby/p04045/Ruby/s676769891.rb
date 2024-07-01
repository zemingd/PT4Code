n, K = gets.split.map &:to_i
D = gets.split.map &:to_i

available_digits = (0..9).to_a - D

while true
    digits = n.to_s.split("").map(&:to_i)
    if (digits - available_digits).empty?
        p n
        exit
    end
    n += 1
end