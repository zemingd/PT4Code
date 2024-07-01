cnt = Hash.new
('a'..'z').each do |c|
    cnt.store(c, 0)
end

while str = gets
    str = str.chomp.split(//).map(&:downcase)
    str.each do |c|
        if cnt.include?(c)
            cnt[c] += 1
        end
    end
end

cnt.each do |c, v|
    puts "#{c} : #{v}"
end