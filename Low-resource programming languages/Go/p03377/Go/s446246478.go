package main

import(
    "fmt"
    "sort"
    "strings"
)



func main() {
    var a,b,x
    fmt.Scan(&a,&b,&x)
    ans := "NO"
    if x>=a && x<=a+b{
        ans = "YES"
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

func scanNums(len int) (nums []int){
    var num int
    for i:=0; i<len; i++{
        fmt.Scan(&num)
        nums = append(nums,num)
    }
    return
}

func scanNums64(len int) (nums []int64){
    var num int64
    for i:=0; i<len; i++{
        fmt.Scan(&num)
        nums = append(nums,num)
    }
    return
}

func scanString(len int) (str []string){
    var s string
    for i:=0; i<len; i++{
        fmt.Scan(&s)
        str = append(str,s)
    }
    return
}

func scanTwoNums(n,m int) ([][]int){
    Nums := make([][]int, n)
    for i:=0; i<n; i++{
        Nums[i] = make([]int, m)
    }
    return Nums
}

func SortString(s string) string{
    t := strings.Split(s, "")
    sort.Strings(t)
    return strings.Join(t, "")
}
