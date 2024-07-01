# -*- coding:utf-8 -*-

loop{
    h, w = STDIN.gets.split.map(&:to_i)
    unless (h == 0) || (w == 0) then
        h.times{
            puts "#" * w
        }
        puts
    else
        break
    end
}