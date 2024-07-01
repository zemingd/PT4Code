S = gets.split("").map(&:to_s)
counts = []
count = 0
S.each do |s|
    if s == 'A' || s == 'C' || s == 'G' || s == 'T'
        count += 1
    else
        counts << count
        count = 0
    end
end
print counts.max