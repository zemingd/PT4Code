result = [0,0,0,0,0,0,0,0]
sheet = {}
for i in 0..2 do
    array = gets.split.map(&:to_i)
    for j in 0..2 do
        sheet[array[j]] = [i,j+3]
        sheet[array[j]] << 6 if i == j 
        sheet[array[j]] << 7 if (i - j).abs == 2
        sheet[array[j]] << 7 if i == 1 && j == 1
    end
end

output = "No"
N = gets.chomp.to_i
for i in 1..N do
    b = gets.chomp.to_i
    if not sheet.has_key?(b) then
        next
    end
    sheet[b].each do |j|
        if result[j] == 2 then
            output = "Yes"
            break
        end
        result[j] += 1
    end
    break if output == "Yes"
    sheet[b].clear
end

puts output
