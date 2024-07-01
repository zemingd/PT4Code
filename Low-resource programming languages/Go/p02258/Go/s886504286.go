package main

import (
        "bufio"
        "fmt"
        "os"
        "strconv"
)

func main() {
        scanner := bufio.NewScanner(os.Stdin)
        scanner.Scan()
        n, _ := strconv.Atoi(scanner.Text())
        maxv := -2000000000000
        scanner.Scan()
        minv, _ := strconv.Atoi(scanner.Text())
        for i := 1; i < n; i++ {
                scanner.Scan()
                current, _ := strconv.Atoi(scanner.Text())
                maxv = max(maxv, current-minv)
                minv = min(minv, current)
        }
        fmt.Println(maxv)
}

func max(a, b int) int {
        if a >= b {
                return a
        } else {
                return b
        }
}

func min(a, b int) int {
        if a > b {
                return b
        } else {
                return a
        }
}
