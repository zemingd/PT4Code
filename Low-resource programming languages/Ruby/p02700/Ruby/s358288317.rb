t_life, t_attack_p, a_life, a_attack_p = readline.split(' ').map(&:to_i)

a_attack_count = (t_life / a_attack_p) + ((t_life % a_attack_p).zero? ? 0:1)
t_attack_count = (a_life / t_attack_p) + ((a_life % t_attack_p).zero? ? 0:1)

if a_attack_count >= t_attack_count
  puts "Yes"
else
  puts "No"
end
