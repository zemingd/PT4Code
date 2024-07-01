S = gets.chomp

a = S.slice(0..1).to_i
b = S.slice(2..3).to_i
a_m = [*(1..12)].include?(a) ? true : false
b_m = [*(1..12)].include?(b) ? true : false

if a_m && b_m then
    puts 'AMBIGUOUS'
elsif !a_m && !b_m then
    puts 'NA'
elsif a_m then
    puts 'MMYY'
elsif b_m then
    puts 'YYMM'
else
    puts 'WA'
end