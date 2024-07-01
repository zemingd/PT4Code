X, K, D = gets.split.map(&:to_i)
if X.abs >= (K*D).abs
    puts X.abs - (K*D).abs
else
    init_K = X.div(D)
    init_X = X % D
    if (K - init_K).even?
        puts init_X.abs
    else
        puts (init_X - D).abs
    end
end