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

func main() {
    sc.Split(bufio.ScanWords)
    n1 := nextInt()
    n2 := nextInt()

    if ( n1 * n2 ) / 2 == 0 {
        fmt.Println("Odd")
    } else{
        fmt.Println("Even")
    }
}
