n=gets.to_i-1
array=gets.split.map(&:to_s)
n.times{|i|
    a=array[i]
    b=array[i+1]
    if a[-1]!=b.chr
        puts "No"
        exit
        end
    i.times{|k|
        if array[k]==b
            puts "No"
            exit
            end
    }
        }
puts "Yes"