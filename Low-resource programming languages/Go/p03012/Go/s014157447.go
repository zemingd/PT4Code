package main

import(
    "fmt"
)



func main() {
    var n int
    fmt.Scan(&n)
    var w = make([]int, n)
    for i:=0; i<n; i++{
        fmt.Scan(&w[i])
    }
    ans := 100000000
    for i:=0; i<n-1; i++{
        s1 := 0
        s2 := 0
        for j:=0; j<=i; j++{
            s1 += w[j]
        }
        for j:=i+1; j<n; j++{
            s2 += w[j]
        }
        ans = min32(ans,abs32(s1-s2))
    }
    fmt.Println(ans)
}





func abs32(a int) int {
    if a<0{
        return -a
    }
    return a
}

func abs64(a int64) int64 {
    if a<0{
        return -a
    }
    return a
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
