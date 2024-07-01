package main

import (
    "fmt"
    "bufio"
    "os"
    "strconv"
)

var sc = bufio.NewScanner(os.Stdin)
const MAX_N = 20 + 10

func nextInt() int {
    sc.Scan()
    i, e := strconv.Atoi(sc.Text())
    if e != nil {
        panic(e)
    }
    return i
}

func main() {
    sc.Split(bufio.ScanWords)

    n := nextInt()
    var a, b, c [MAX_N]int
    for i := 0; i < n; i++ {
        a[i] = nextInt()
        a[i]--
    }
    for i := 0; i < n; i++ {
        b[i] = nextInt()
    }
    for i := 0; i < n-1; i++ {
        c[i] = nextInt()
    }

    sum := 0

    for i := 0; i < n-1; i++ {
        sum += b[a[i]]
        if a[i]+1 == a[i+1]{
            sum += c[a[i]]
        }
    }
    sum += b[a[n-1]]

    fmt.Println(sum)
}