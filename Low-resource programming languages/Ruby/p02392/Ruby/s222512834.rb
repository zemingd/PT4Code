a = gets.split.map(&:to_i)
if (a[0]<=>a[1]) < 0 && (a[1]<=>a[2]) < 0 then
        puts "Yes"
        else
        puts "No"
end