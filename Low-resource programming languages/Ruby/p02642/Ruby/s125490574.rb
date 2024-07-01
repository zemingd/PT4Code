io = STDIN
int=Array.new(10**6){0}
n=io.gets.to_i
ar=io.gets.split.map(&:to_i).sort.tally
  # 3  6  9  12  15  18  21  24
  #      8         16        24
  #         11             22
  #                16
  #                          24
int=Array.new(ar.keys.last+1)
cnt=0
ar.each do |k,v|
  i=k
  next if v>1
  cnt+=1 unless int[i]
  while(i<=ar.keys.last)
    int[i]=true
    i+=k
  end
end
puts cnt
