year,month,day=gets.split("/").map(&:to_i)
puts Time.local(2019,4,30) >= Time.local(year,month,day) ? "Heisei" : "TBD"