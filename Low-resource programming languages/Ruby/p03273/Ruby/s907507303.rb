require 'pp'

h, w = gets.chomp!.split(" ").map(&:to_i)
matrix = {}
h.times do |i|
    v = gets.chomp!.chars

    matrix[i] = v
end

matrix.each do |k, v|
    if v.all?{|ch| ch == "." }
        matrix.delete(k)
    end
end

(w - 1).downto(0) do |i|
    if matrix.all? {|k, v| v[i] == "." }
        matrix.each do |k, v|
            v.delete_at(i)
        end
    end
end

matrix.each do |_, v|
    puts v.join
end
