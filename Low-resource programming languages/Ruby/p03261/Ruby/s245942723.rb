def input
n = gets.strip.to_i
ws = n.times.map{ gets.strip }
return [n, ws]
end

def yes_or_no(n, ws)
        if ws.group_by{|x| x}.values.map{|wg| wg.size != 1 }.any?
        return  "No"
        end

        if ws.each_cons(2).map{|a, b| a[-1] == b[0]}.all?
        return  "Yes"
        end

        return "No"
end

puts yes_or_no(*input())