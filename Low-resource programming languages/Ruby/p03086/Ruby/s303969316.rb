input = readlines.first.to_s
dna_list = ['A', 'C', 'G', 'T']

answer_count = 0
tmp_count = 0
input.split('').each do |str|
   if dna_list.include?(str)
     tmp_count += 1
   else
     answer_count = [answer_count, tmp_count].max
     tmp_count = 0
   end
end

puts answer_count