t_hp, t_atc, a_hp, a_atc = gets.split.map(&:to_i)
#while t_hp > 0 && a_hp > 0 do

a = (t_hp / a_atc).ceil
b = (a_hp / t_atc).ceil
if a => b
  puts "Yes"
else
  puts "No"
end
p 3.3.ceil