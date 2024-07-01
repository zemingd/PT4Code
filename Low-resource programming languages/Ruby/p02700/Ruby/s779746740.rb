# frozen_string_literal: true

t_life, t_attack_p, a_life, a_attack_p = readline.split(' ').map(&:to_f)

if (t_life / a_attack_p).ceil >= (a_life / t_attack_p).ceil
  puts 'Yes'
else
  puts 'No'
end
