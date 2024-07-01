N = gets.chomp.to_i
cms = gets.chomp

cms_arr = cms.split
result = []

for i in 0..cms_arr.size - 1
    result[cms_arr[i].to_i - 1] = (i + 1).to_s
end

puts result.join(" ")