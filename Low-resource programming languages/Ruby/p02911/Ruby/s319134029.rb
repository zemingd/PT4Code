def attack_survival(n, k, q, aq)
  ans = Array.new(n, 0)
  aq.each { |a| ans[a - 1] += 1 }
  ans.each do |n|
    puts k - q + n > 0 ? 'Yes' : 'No'
  end
end

n, k, q = gets.split.map(&:to_i)
aq = []
q.times{ aq << gets.to_i }

attack_survival(n, k, q, aq)
