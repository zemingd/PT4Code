a,b,c,d = gets.chomp.split("").map(&:to_i)
arr = ""
all = 0
["+","-"].each do |i|
    ["+","-"].each do |o|
        ["+","-"].each do |l|
        arr = "#{a}"+ "," + i + "#{b}"+ "," + o + "#{c}"+ "," + l + "#{d}"
        all += arr.split(",").map(&:to_i).inject(:+)
            if all == 7
                puts "#{a}" + i + "#{b}"+ o + "#{c}"+ l + "#{d}" + "=7"
            end
        end        
    end
end