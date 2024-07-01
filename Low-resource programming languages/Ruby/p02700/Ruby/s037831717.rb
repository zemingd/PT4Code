t_hp, t_pow, a_hp, a_pow = gets.split.map(&:to_i)

t_atk = (a_hp.to_f / t_pow).ceil
a_atk = (t_hp.to_f / a_pow).ceil

puts ((t_atk <= a_atk) ? 'Yes' : 'No')