def room(bill,f,r,v)
    case f
    when 1
        bill["#{f}"][r - 1] += v
    when 2
        bill["#{f}"][r - 1] += v
    when 3
        bill["#{f}"][r - 1] += v
    when 4
        bill["#{f}"][r - 1] += v
    end

end

def divide_bill_line
    puts "####################"
end

n = gets.chomp.to_i
bill_1 = {"1"=>Array.new(10,0), "2"=>Array.new(10,0), "3"=>Array.new(10,0), }
bill_2 = {"1"=>Array.new(10,0), "2"=>Array.new(10,0), "3"=>Array.new(10,0), }
bill_3 = {"1"=>Array.new(10,0), "2"=>Array.new(10,0), "3"=>Array.new(10,0), }
bill_4 = {"1"=>Array.new(10,0), "2"=>Array.new(10,0), "3"=>Array.new(10,0), }
n.times do |i|
    b, f, r, v = gets.chomp.split.map(&:to_i)
        case b
        when 1
            room(bill_1, f, r, v)
        when 2
            room(bill_2, f, r, v)
        when 3
            room(bill_3, f, r, v)
        when 4
            room(bill_4, f, r, v)
        end
end
4.times do |i|
    case i
    when 0
        bill_1.values.each do |a|
            a.each do |c|
                #if c == 9
                #    print "#{c}"
                #else
                    print " #{c}"
                #end
            end
            puts ""
        end
        divide_bill_line
    when 1
        bill_2.values.each do |a|
            a.each do |c|
                #if c == 0
                #    print "#{c}"
                #else
                    print " #{c}"
                #end
            end
            puts ""
        end
        divide_bill_line
    when 2
        bill_3.values.each do |a|
            a.each do |c|
                #if c == 0
                #    print "#{c}"
                #else
                    print " #{c}"
                #end
            end
            puts ""
        end
        divide_bill_line
    when 3
        bill_4.values.each do |a|
            a.each do |c|
                #if c == 0
                #    print "#{c}"
                #else
                    print " #{c}"
                #end
            end
            puts ""
        end
    end
end