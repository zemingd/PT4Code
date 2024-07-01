package main

import(
    "fmt"
)



func main() {
    var n int
    fmt.Scan(&n)
    var a = make([]int, n)
    for i := 0; i<n ; i++{
        fmt.Scan(&a[i])
    }
    ans := 0
    for i := 1; i < n-1 ; i++{
        if (a[i-1] < a[i] && a[i] < a[i+1]) || (a[i-1] > a[i] && a[i] > a[i+1]){
            ans++
        }
    }
    fmt.Println(ans)
}





func min32(a, b int) int {
    if a >= b {
        return b
    }
    return a
}

func max32(a, b int) int {
    if a >= b {
        return a
    }
    return b
}

func min64(a, b int64) int64 {
    if a >= b {
        return b
    }
    return a
}

func max64(a, b int64) int64 {
    if a >= b {
        return a
    }
    return b
}

func gcd(a, b int64) int64 {
    if a % b == 0 {
        return b
    } else {
        return gcd(b, a%b)
    }
}

func lcm(a, b int64) int64 {
    return a / gcd(a, b) * b
}
