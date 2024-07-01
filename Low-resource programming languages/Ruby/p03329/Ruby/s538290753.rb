def ref_cheet_sheet(cheet_sheet,num)
    times = 0
    cheet_sheet.each_with_index do |list,i|
        if (list.select{|x| x == num}.size > 0)
            times = i+1
            break
        end
    end
    times
end

def count_times(cheet_sheet,yens,minuend,count)
    if minuend == 0
        return count
    elsif minuend < 36
        count += ref_cheet_sheet(cheet_sheet,minuend)
        return count
    else
        logs = yens.map{|y| Math.log(minuend, y)}
        subtrahend = yens.zip(logs.map{|x| x.to_i})
          .map{|x| x.reduce(:**)}.max
        count_times(cheet_sheet, yens, minuend - subtrahend, count + 1)
    end
end

def C(n)
    yens = [6,9]
    cheet_sheet =  (1..7).map do |i| 
        [1,6,9].repeated_combination(i).map do |c|
            c.reduce(:+)
        end
    end
    result = count_times(cheet_sheet,yens,n,0)
    puts result
end

n = gets.to_i
C(n)
