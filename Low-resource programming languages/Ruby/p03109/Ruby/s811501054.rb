def heisei(a)
  if(a[0].to_i>=2019)
    if(a[1].to_i>=4)
      if(a[2].to_i>30)
        return "TBD"
      end
    end
  end
  return "heisei"
end
n = gets.chomp
a = n.split("/")
puts(heisei(a))
