package main

import "fmt"

func main() {
        a := make([]int, 3)
        for i := range a {
                fmt.Scan(&a[i])
        }

        mincost := abs(a[1]-a[0]) + abs(a[2]-a[1])
        for i := 0; i < 6; i++ {
                b := []int{
                        a[i/2],
                        a[(i/2+i%2+1)%3],
                        a[(i/2+(i+1)%2+1)%3],
                }
                cost := abs(b[1]-b[0]) + abs(b[2]-b[1])
                if cost < mincost {
                        mincost = cost
                }
        }
        fmt.Println(mincost)
}

func abs(x int) int {
        if x < 0 {
                return -x
        }
        return x
}