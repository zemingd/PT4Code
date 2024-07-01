package main

import (
    "fmt"
    "strconv"
    )
func main() {
   var N, M int
   fmt.Scan(&N, &M)
   
   var s, c []int
   for i:=0; i < M; i++ {
       var t1, t2 int
       fmt.Scan(&t1, &t2)
       s, c = append(s, t1), append(c, t2)
   }
   
   fmt.Println(solve(s,c,N,M))
}

func solve(s, c []int, N, M int) int {
    if !first(s,c,N,M) {
        return -1
    }
    pd := padding(N)
    
    for i:=0; i < M; i++ {
        if pd[s[i]-1] != -1 && pd[s[i]-1] != c[i] {
            return -1
        }
        pd[s[i]-1] = c[i]
    }
    
    for i, v := range pd {
        if v == -1 {
          pd[i] =0  
        }
    }
    
    if !second(pd) && N != 1 {
        pd[0] = 1
        var str string
        for i:=0; i < N; i++ {
           str += strconv.Itoa(pd[i])
        }
        re, _ := strconv.Atoi(str)
        return re
    }
    
    for i, v := range pd {
        
        if v == 0 {
            continue
        }
        pd = pd[i:]
        break
    }
    
    var str string
    for i:=0; i < len(pd); i++ {
        str += strconv.Itoa(pd[i])
    }
    re, _ := strconv.Atoi(str)
    return re
}

func padding(N int) []int {
    return func() []int {
        var a []int
        for i:=0; i < N; i++ {
            a = append(a, -1)
        }
        return a
    }()
}

func first(s,c []int, N, M int) bool {
    for i :=0; i < M; i++ {
        if s[i] == 1 && c[i] == 0 && N != 1 {
            return false
        }
    }
    return true
}

func second(pd []int) bool {
    var ok bool 
    for _, v := range pd {
        if v != 0 {
            ok = true
        }
    }
    return ok
}