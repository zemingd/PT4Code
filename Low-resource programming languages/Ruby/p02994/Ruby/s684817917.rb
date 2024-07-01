N, L = gets.split.map(&:to_i)

orig = N*L + (N**2 - N)/2

min_diff = if L > 0 then
        L
    elsif L + N > 0 then
        0
    else
        L + N - 1
    end

STDERR.puts "orig: #{orig}, min_diff: #{min_diff}"

p orig - min_diff
