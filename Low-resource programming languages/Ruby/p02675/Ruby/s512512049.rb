a = ['hon']*10
a[0]=a[1]=a[6]=a[8]= 'pon'
a[3] = 'bon'
puts a[gets.to_i % 10]