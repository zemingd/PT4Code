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
    n := nextInt()
    hour := n / (60 * 60)
    n = n % (60 * 60)
    minute := n / 60
    second := n % 60
    fmt.Printf("%d:%d:%d\n", hour, minute, second)
}
