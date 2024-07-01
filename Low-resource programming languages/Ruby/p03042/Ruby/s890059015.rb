def ym
  s=gets.chomp
  s_former=s[0..1].to_i
  s_latter=s[2..3].to_i

  if s_former>=1 && s_former<=12
    if s_latter>=1 && s_latter<=12
      return "AMBIGUOUS"
    else
      return  "MMYY"
    end
  else
    if s_latter>=1 && s_latter<=12
      return "YYMM"
    else
      return "NA"
    end
  end
end

#p defined?(ym)
print ym
