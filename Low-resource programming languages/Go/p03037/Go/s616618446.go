package main

import (
    "bufio"
    "fmt"
    "math"
    "os"
    "strconv"
)

func main() {
    var N, M int 
    fmt.Scanln(&N, &M) 

    sc := bufio.NewScanner(os.Stdin)
    sc.Split(bufio.ScanWords)

    var maxL, minR int 
    minR = 1 << 31
    for i := 0; i < M; i++ {
        sc.Scan()
        L, _ := strconv.Atoi(sc.Text())
        sc.Scan()
        R, _ := strconv.Atoi(sc.Text())

        maxL = max(maxL, L)
        minR = min(minR, R)
    }   

    var ans int 
    if maxL <= minR {
        ans = minR - maxL + 1 
    }   
    fmt.Println(ans)
}

func max(a, b int) int {
    return int(math.Max(float64(a), float64(b)))
}

func min(a, b int) int {
    return int(math.Min(float64(a), float64(b)))
}
