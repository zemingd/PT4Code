h,w = gets.split.map(&:to_i)

a = []
h.times{a << gets.chomp.split("")}

(h-1).downto(0) do |i|
    a.delete_at(i) if a[i].all?{|e| e == "."}
end

(w-1).downto(0) do |i|
    a.each{|e| e.delete_at(i)} if a.all?{|e| e[i] == "."}
end

puts a.map{|e| e.join}