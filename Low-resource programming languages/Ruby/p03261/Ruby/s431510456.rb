n=gets.chomp.to_i
ans="Yes"
before=gets.chomp
after=""
st=[before]
(n-1).times{
  after=gets.chomp
  if after[0]!=before[-1] then
    ans="No"
  end
  for i in 0..st.length-1 do
    if after==st[i] then
      ans="No"
    end
  end
  before=after
  st.push(before)
}
puts ans