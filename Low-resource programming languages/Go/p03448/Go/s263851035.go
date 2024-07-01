package main

import (
    "fmt"
    "bufio"
    "os"
    "strconv"
)

var sc = bufio.NewScanner(os.Stdin)
func next() string{
    sc.Scan()
    return sc.Text()
}

func nextInt() int{
    a, _ := strconv.Atoi(next())
    return a
}

func main() {
    var (
        a     int
        b     int
        c     int
        x     int
        count int
    )

    a = nextInt()
    b = nextInt()
    c = nextInt()
    x = nextInt()

    for i := 0; i <= a; i++ {
        for j := 0; j <= b; j++ {
            for k := 0; k <= c; k++ {
                if x == 500*i + 100*j + 50*k {
                    count++
                }
            }
        }
    }

    fmt.Println(count)
}