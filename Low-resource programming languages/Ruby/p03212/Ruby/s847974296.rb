def sgs(str,limit)
  if str.to_i > limit
    return 0
  end
  if str.include?("3") && str.include?("5") && str.include?("7")
    return sgs(str+"3",limit) + sgs(str+"5",limit) + sgs(str+"7",limit) + 1
  else
    return sgs(str+"3",limit) + sgs(str+"5",limit) + sgs(str+"7",limit)
  end
end

n = gets.to_i
puts sgs("",n)
