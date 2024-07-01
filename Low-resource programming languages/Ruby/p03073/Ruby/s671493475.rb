S=gets.chomp

black_start_count=0
white_start_count=0

S.each_char.each_with_index do |s,i|
    if s=="0"
        white_start_count+=1 if i%2==0
        black_start_count+=1 if i%2==1
    else
        white_start_count+=1 if i%2==1
        black_start_count+=1 if i%2==0
    end
end

puts (black_start_count<white_start_count ? black_start_count : white_start_count)