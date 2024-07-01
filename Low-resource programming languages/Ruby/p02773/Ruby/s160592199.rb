result = {}
vote = []
gets.to_i.times do
    v = gets
    result[v.chomp] = result[v.chomp].to_i + 1
    (vote[result[v.chomp]] ||= []).push(v)
end
vote.last.sort.each{|k| puts k}