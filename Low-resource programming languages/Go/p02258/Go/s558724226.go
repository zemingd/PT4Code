package main

import  "fmt"

func getMaxProfit(buf []int) int{
    min := buf[0]
    max := -32768
    for i := 1 ; i < len(buf) - 1 ; i++ {
        if max < (buf[i] - min) {
            max = (buf[i] - min)
        }
        if min > buf[i] {
            min = buf[i]
        }
    }
    return max
}

func main(){
    var n int
    fmt.Scanln(&n)
    buf := make([]int, n)
    for i := range buf{
        fmt.Scanln(&buf[i])
    }
    fmt.Println(getMaxProfit(buf))
}
