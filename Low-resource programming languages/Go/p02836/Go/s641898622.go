package main

import "fmt"

func solve(s string) int{
    l := 0
    r := len(s)-1
    ans := 0
    for ; l < r;{
        switch{
            case s[l] == s[r]:
            ans += 0
            case s[l] != s[r]:
            ans += 1
        }
        l++
        r--
    }
    return ans
}

func main(){
    var s string
    fmt.Scan(&s)
    fmt.Println(solve(s))
}
