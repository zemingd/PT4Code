# 3 個のタスクがあり、あなたは全てのタスクを完了させなければなりません。
# はじめ、任意の 1 個のタスクをコスト 0 で完了できます。
# また、i 番目のタスクを完了した直後にコスト |Aj−Ai| で j 番目のタスクを完了できます。
# ここで |x| は x の絶対値を表します。
# 全てのタスクを完了するのに要する合計コストの最小値を求めてください。

a = gets.chomp.split
a.length.times do |i|
    a[i] = a[i].to_i
end

costs = []
ai_permu_array = a.permutation(a.length).to_a

a.length.times do |i|
    ai_permu_array.each do |ai_permu|
        cost = 0
        next_cost = 0
        ai_permu.length.times do |k|
            if k == i
                cost += next_cost
                next_cost = ai_permu[k]
            else
                cost += (ai_permu[k] - next_cost).abs
                next_cost = ai_permu[k]
            end
        end
        costs << cost
    end
end

puts costs.min