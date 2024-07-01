N, m = gets.chomp.split.map(&:to_i)

ranking = {}

gets.chomp.split.map(&:to_i).sort.reverse.each_with_index do |a, i|
    ranking[i] = a
end

def update_ranking(ranking, e, rank)
    ranking[rank] = e
    if rank == N - 1
        return
    end

    under = ranking[rank + 1]
    if under > e
        ranking[rank] = under
        update_ranking(ranking, e, rank + 1)
    end
end

m.times do |t|
    update_ranking(ranking, ranking[0] / 2, 0)
end

puts ranking.values.inject(:+)
