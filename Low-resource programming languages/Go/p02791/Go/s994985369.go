package main

import (
    "bufio"
    "fmt"
    "os"
    "strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
    sc.Scan()
    i, e := strconv.Atoi(sc.Text())
    if e != nil {
        panic(e)
    }
    return i
}

func main(){
    sc.Split(bufio.ScanWords)
    N := nextInt()

    P := make([]int, N)

    for i:=0; i<N; i++{
        P[i] = nextInt()
    }

    var large, count int

    for i:=0; i<N; i++ {
        large = 0
        for j:=0; j<i; j++ {
            if P[i]<=P[j]{
                large++
            } else {
                break
            }
        }
        if large == i {
            count++
        }
    }
    fmt.Println(count)
}
