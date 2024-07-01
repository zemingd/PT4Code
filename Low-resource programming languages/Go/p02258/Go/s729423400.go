package main

import (
    "fmt"
    "bufio"
    "os"
    "strconv"
)

func main() {
    var sc = bufio.NewScanner(os.Stdin)
    
    var nStr string
    if sc.Scan() {
        nStr = sc.Text()
    }
    n, _ := strconv.Atoi(nStr)
    
    var Rs []int
    for i := 0; i < n; i++ {
        if sc.Scan() {
            t := sc.Text()
            R, _ := strconv.Atoi(t)
            Rs = append(Rs, R)
        }
    }

    max := -999999999
    min := Rs[0]

    for i := 1; i < n; i++ {
        R := Rs[i]
        result := R - min
        if max < result {
            max = result
        }
        if min > R {
            min = R
        }
    }

    fmt.Println(max)
    
}
