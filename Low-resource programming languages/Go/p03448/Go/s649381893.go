package main

import (
    "fmt"
    "os"
    "bufio"
    "strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
    sc.Scan()
    return sc.Text()
}

func nextInt() int {
   sc.Scan()
   i, _ := strconv.Atoi(sc.Text())
   return i
}

func storeIntArr(n int) []int {
    var a []int
    for i := 0; i < n; i++ {
        a = append(a, nextInt())
    }
    return a
}

func main() {
    sc.Split(bufio.ScanWords)

    a := nextInt()
    b := nextInt()
    c := nextInt()
    x := nextInt()

    var count int
    for i := 0; i <= a; i++ {
        for j := 0; j <= b; j++ {
            for k := 0; k <= c; k++ {
                total := i*500 + j*100 + k*50
                if total == x {
                    count++
                }
            }
        }
    }
    fmt.Println(count)
}
