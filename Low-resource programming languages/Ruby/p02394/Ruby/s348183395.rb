a = gets.split.map(&:to_i)
if a[2]-a[4] >= 0 && a[3]-a[4] >= 0 && a[2]+a[4] <= a[0] && a[3]+a[4] <= a[1] then
                puts "Yes"
                else
                puts "No"
end