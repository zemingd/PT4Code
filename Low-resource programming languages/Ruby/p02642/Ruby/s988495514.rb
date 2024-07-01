io = STDIN
int=Array.new(10**6){0}
n=io.gets.to_i
max=0
ar=io.gets.split.map do |a|
  i=a.to_i
  max=i if i>max
  i
end.sort.tally
  # 3  6  9  12  15  18  21  24
  #      8         16        24
  #         11             22
  #                16
  #                          24
int=Array.new(max+1)
cnt=0
ar.each do |k,v|
  i=k
  cnt+=1 if v==1 && !int[i]
  while(i<=max)
    int[i]=true
    i+=k
  end
end
puts cnt
