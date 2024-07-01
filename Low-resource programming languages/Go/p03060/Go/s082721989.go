package main

import(
    "fmt"
)



func main() {
    var n int
    fmt.Scan(&n)
    var v,c = make([]int,n),make([]int,n)
    for i:=0; i<n; i++{
        fmt.Scan(&v[i])
    }
    for i:=0; i<n; i++{
        fmt.Scan(&c[i])
    }
    ans := -10000000
    for i:=0; i<(1<<uint(n)); i++{
        sumv:=0
        sumc:=0
        for j:=0; j<n; j++{
            if (i>>uint(j))&1 == 1{
                sumv += v[j]
                sumc += c[j]
            }
        }
        ans = max32(ans, sumv-sumc)
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
