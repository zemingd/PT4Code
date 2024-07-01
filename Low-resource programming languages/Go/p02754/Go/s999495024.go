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

func min (a int, b int) int {
     if a > b {
     	return b
     } else {
        return a
     }
}

func main() {
    sc.Split(bufio.ScanWords)
    n := nextInt()
    a := nextInt()
    b := nextInt()

    div := n / (a + b)
    pow := n % (a + b)
    ans := div * a + min(pow, a)
    fmt.Println(ans)
}