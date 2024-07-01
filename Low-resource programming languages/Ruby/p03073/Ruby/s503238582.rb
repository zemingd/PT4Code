s=gets.chomp.split("")

zero_start_zero=s.select.with_index{|_,i| i%2==0}.count {|si| si == "0"}
zero_start_one=s.select.with_index{|_,i| i%2==1}.count {|si| si == "1"}

zero_start_c=s.select.with_index {|si,i|
  if i%2==0
    si == "1"
  else
    si=="0"
  end
}.count

one_start_c=s.select.with_index {|si,i|
  if i%2==1
    si == "1"
  else
    si=="0"
  end
}.count

r=zero_start_c > one_start_c ? one_start_c : zero_start_c
print(r)
