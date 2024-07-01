n=gets.to_i
pref=""
after=""
pref=gets.chomp
preflist=[pref]
f=1
(n-1).times{
  after=gets.chomp
  if pref[-1]!=after[0] || preflist.include?(after) then
    puts "No"
    f=0
    break
  end
  preflist << after
  pref=after
}
if f==1 then puts "Yes" end