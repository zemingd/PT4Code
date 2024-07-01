s=gets.chomp
10.times{
    s.sub! /[01]B/, ""
    s.sub! /^B/, ""
}
puts s
