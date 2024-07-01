def step(a,h,w)
  blacks = []
  changes = []
  ba = a
  h.times do |n|
    h.times do |nn|
      if a["#{n}#{nn}"] == "#"
        blacks.push("#{n}#{nn}")
      end
    end
  end
  blacks.size.times do |n|
    changes.push(blacks[n].to_i-10.to_s,blacks[n].to_i-1.to_s,blacks[n]+10.to_s,blacks[n]+1.to_s)
  end
  changes.size.times do |n| 
    if a[changes[n]] != nil
      ba[changes[n]] = "#"
    end
  end
  return ba
end
def turencheker(a,h,w)
  result = true
  h.times do |n|
    w.times do |nn|
      if a["#{n}#{nn}"] == "#"
      else
        result = false
      end
    end
  end
  return result
end
a = {}
h,w = gets.chomp.split(" ").map(&to_i)
h.times do |n|
  clm = gets.chmp.split(" ").map(&to_i)
  w.times do |nn|
    i = nn-1
    a["#{n}#{nn}"]=clm[i]
  end
end
retulst = 0
until turencheker(a,h,w)
  step(a,h,w)
  result += 1
end
puts result
