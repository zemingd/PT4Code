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
    r := nextInt() * 100
    g := nextInt() * 10
    b := nextInt()

    if (r + g + b) % 4 ==0{
        fmt.Println("YES")
    }else{
        fmt.Println("NO")
    }
}