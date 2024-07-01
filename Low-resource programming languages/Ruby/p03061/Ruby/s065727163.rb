gets
a = gets.split.map(&:to_i).uniq
n = a.size
max_gcd = a.inject(:gcd)
if n>1
    n.times do |t|
        tmp = a.dup
        tmp.delete_at(t)
        t_g = tmp.inject(:gcd)
        max_gcd = t_g if max_gcd < t_g
    end
end
puts max_gcd