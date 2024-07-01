N, M = gets.split.map(&:to_i)

prefCityNo = Array.new(N+1, 1)

cityInfo = [*0...M].map{ |i| gets.split.map(&:to_i) + [i] }.sort_by{|info| info[1] } # 誕生年でソート
cityNames = cityInfo.map{|info|
    prefNo = info[0]
    id = "%#06d" % prefNo + "%06d" % prefCityNo[prefNo]
    prefCityNo[prefNo] += 1
    [id, info[2]]
}

cityNames.sort_by{|name| name[1]}.each{|name|
    puts name[0]
}
