n,input = gets.chomp.split("\n");
input = gets.chomp.split(" ").map(&:to_i);
count = 0
while input.any? {|e| e.even?} do
    input = input.map do |i|
        if i.even? then
            count += 1
            # puts count
            next i/2
        end
    end.compact
end
puts count