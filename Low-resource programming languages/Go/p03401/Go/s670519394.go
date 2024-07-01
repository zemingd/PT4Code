package main

import "fmt"

func main() {
        var n int
        fmt.Scanln(&n)
        a := make([]int, n+2)
        for i := range a[1 : n+1] {
                fmt.Scanf("%d", &a[i+1])
        }

        fullcost := 0
        for i := 1; i < len(a); i++ {
                fullcost += abs(a[i-1] - a[i])
        }

        for skip := 1; skip <= n; skip++ {
                cost := fullcost
                cost -= abs(a[skip-1] - a[skip])
                cost -= abs(a[skip] - a[skip+1])
                cost += abs(a[skip-1] - a[skip+1])
                fmt.Println(cost)
        }
}

func abs(v int) int {
        if v > 0 {
                return v
        }
        return -v
}