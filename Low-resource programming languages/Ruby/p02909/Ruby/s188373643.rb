s=gets.chomp
a=["Sunny","Cloudy","Rainy","Sunny"]
(0..2).each{|i| puts a[i+1] or exit if a[i].eql?(s)}