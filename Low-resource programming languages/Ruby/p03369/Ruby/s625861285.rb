s = gets.split(//).map(&:to_s)

maru = 0
batu = 0
s.each do |t|
    if t == "o"
        maru = maru + 1
    elsif t == "x"
        batu = batu + 1
    end
end

sa = maru - batu

if sa >= 0
    puts 700 + (sa * 100)
elsif 0 > sa
    puts 700
end