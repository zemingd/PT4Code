package main

import (
    "fmt"
    "os"
)

func contains(s []int, e int) bool {
    for _, v := range s { 
        if e == v { 
            return true
        }   
    }   
    return false
}

func main() {
    var N int //1~3
    var M int //1~5
    var ans int 

    fmt.Scan(&N, &M) 
    var s []int = make([]int, M, M)
    var c []int = make([]int, M, M)

    flag := []bool{true, true, true}

    candidate := make([]int, M, M)

      //read
    for i := 0; i < M; i++ {
        fmt.Scan(&s[i], &c[i])
    }   

    //eval
    for i := 0; i < M; i++ {
        switch s[i] {
        case 1:
            if flag[0] && N > 2 {
                candidate[i] = c[i] * 100
                flag[0] = false
            } else if contains(candidate, c[i]*100) {
                continue
            } else {
                fmt.Println(-1)
                os.Exit(0)
        case 2:
            if flag[1] && N > 1 {
                candidate[i] = c[i] * 10
                flag[1] = false
            } else if contains(candidate, c[i]*10) {
                continue
            } else {
                fmt.Println(-1)
                os.Exit(0)
            }
        case 3:
            if flag[2] {
                candidate[i] = c[i]
                flag[2] = false
            } else if contains(candidate, c[i]) {
                continue
            } else {
                fmt.Println(-1)
                os.Exit(0)
            }
        }
    }

    //output
    for _, elem := range candidate {
        ans = ans + elem
    }

    if ans != 0 {
        fmt.Println(ans)
    } else {
        fmt.Println(-1)
    }

}
