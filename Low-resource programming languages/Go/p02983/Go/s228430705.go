package main

import(
    "fmt"
    "math"
)

func main() {
    var l, r int
    fmt.Scan(&l, &r)
    var min, second int
    var num int
    min = 2020
    second = 2020
    for i:=l;i <=r;i++ {
        num = int(math.Abs(float64(i%2019)))
        if min > num{
            second = min
            min = i%2019
        } else if second > num && min < num{
            second = num
        } 
    }
    fmt.Println(min*second)
}
