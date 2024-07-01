package main

import (
    "bufio"
    "fmt"
    "os"
)

func scanInt(scanner *bufio.Scanner) (i int) {
    if scanner.Scan() {
        bs := scanner.Bytes()
        for _, b := range bs {
            i = i*10 + int(b-'0')
        }
    }
    return
}

func fee(n, k, x, y int) int {
    if n <= k {
        return x * n
    }
    return x * k + y * (n - k)
}

func main() {
    scanner := bufio.NewScanner(os.Stdin)
    scanner.Split(bufio.ScanWords)

    n := scanInt(scanner) // 1 <= n <= 10000
    k := scanInt(scanner) // 1 <= k <= 10000
    x := scanInt(scanner) // 1 <= y < x <= 10000
    y := scanInt(scanner) // 1 <= y < x <= 10000
    fmt.Println(fee(n, k, x, y))
}
