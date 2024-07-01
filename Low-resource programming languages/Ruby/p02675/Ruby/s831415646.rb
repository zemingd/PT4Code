n,m  = gets.chomp.split
n = n.to_i
m = m.to_i
arr = Array.new
while line = $stdin.gets
arr << line.chomp.split(" ").map(&:to_i)
end

ans = Array.new(n-1)
tugiarr = arr.dup
tugi=[1]
kariarr = []
until tugiarr == kariarr do
    kari = tugi.dup
    kariarr = tugiarr.dup
    tugi = []
    tugiarr = []
    kari.each{|l|
    kariarr.each{|item|
        if item[0]==l || item[1]==l then
            b = (item[0]==l)?  item[1] : item[0]
            if ans[b-1] == nil
                ans[b-1] = l
                tugi.push(b)
            end
        else
            tugiarr.push(item)
        end
    }
    }
    
end
if tugiarr.empty?
    puts "Yes", ans[1..-1]
else
    puts "No"
end