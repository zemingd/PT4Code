grs = [
    [1,3,5,7,8,10,12],
    [4,6,9,11]
]
xy = gets.split.map(&:to_i)
if grs.any?{|gr| xy.all?{|z| gr.include?(z)}}
    puts 'Yes'
else
    puts 'No'
end