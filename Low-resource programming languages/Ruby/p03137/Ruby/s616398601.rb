input = STDIN.read.split("\n").map{|l| l.split(" ").map{|a| a.to_i}}

N = input[0][0]
M = input[0][1]

X = input[1].sort


def main() 
    diffs = []

    if N >= M 
        return 0
    end

    for i in 0..(M - 2)
        d = X[i + 1] - X[i] 
        diffs.push([i, d])
    end

    ds = diffs.sort_by{|x| x[1]}.reverse.slice(0, N - 1).sort_by{|x| x[0]}
    moves = 0

    if ds.length > 0
        for i in 0..(N - 1)
            if i == 0
                st = 0
                ed = ds[i][0]
            elsif i == (N - 1)
                st = ds[i - 1][0] + 1
                ed = M - 1
            else
                st = ds[i - 1][0] + 1
                ed = ds[i][0]
            end
            moves = moves + (X[ed] - X[st]).abs
        end
    end
    return moves
end

puts main()