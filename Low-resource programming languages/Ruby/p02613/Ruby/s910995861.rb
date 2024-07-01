a={}
%w!AC WA TLE RE!.map{a[-1]=0}
gets.to_i{
  a[gets.chomp]+=1
  }

%w!AC WA TLE RE!.each do |n|
  puts "#{n} × #a{n}"
end
