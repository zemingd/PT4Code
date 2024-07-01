package main

import (
    "fmt"
    "strconv"
)

func main() {
    var bs []byte
    fmt.Scan(&bs)
    is := make([]int, 4)
    for i := 0; i < 4; i++ {
        is[i], _ = strconv.Atoi(string([]byte{bs[i]}))
    }   
    for i := 0; i < 8; i++ {
        ans := []byte{bs[0]}
        sum := is[0]
        if i%2 == 0 { 
            sum += is[1]
            ans = append(ans, []byte{'+', bs[1]}...)
        } else {
            sum -= is[1]
            ans = append(ans, []byte{'-', bs[1]}...)
        }   
        if i%4 == 0 || i%4 == 1 { 
            sum += is[2]
            ans = append(ans, []byte{'+', bs[2]}...)
        } else {
            sum -= is[2]
            ans = append(ans, []byte{'-', bs[2]}...)
        }   
        if i < 4 { 
            sum += is[3]
            ans = append(ans, []byte{'+', bs[3]}...)
        } else {
            sum -= is[3]
            ans = append(ans, []byte{'-', bs[3]}...)
        }   
        if sum == 7 { 
            fmt.Printf("%s=7\n", ans)
            break
        }   
    }   
}
