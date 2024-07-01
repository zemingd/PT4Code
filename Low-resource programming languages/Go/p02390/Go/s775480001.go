package main

import (
    "bufio"
    "fmt"
    "os"
    "strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() (int, error) {
    sc.Scan()
    s := sc.Text()
    return strconv.Atoi(s)
}

func main() {
    sc.Split(bufio.ScanWords)

    rs, _ := nextInt()

    s := rs % 60
    rm := rs / 60
    m := rm % 60
    h := rm / 60

    fmt.Printf("%d:%d:%d\n", h, m, s)
}
