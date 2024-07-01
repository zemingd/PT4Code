n=gets.to_i
h=Hash.new{0}

tmp=""
flg=false

n.times do
  w=gets.chomp
  if h.empty?
    h[w]+=1
    tmp=w
  else
    h[w]+=1
    if w[0]!=tmp[-1] || h[w]>1
      flg=true
      break
    end
    tmp=w
  end
end

puts flg ? "No" : "Yes"