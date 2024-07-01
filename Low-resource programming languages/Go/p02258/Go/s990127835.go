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
        n, _ := strconv.Atoi(scanner.Text()) //競プロでは基本的にエラーを握りつぶす方針で｡
        scanner.Scan()
        pivot, _ := strconv.Atoi(scanner.Text())
        scanner.Scan()
        first, _ := strconv.Atoi(scanner.Text())
        result := first - pivot
        for i := 2; i < n; i++ {
                ok := scanner.Scan()
                if !ok {
                        break
                }
                current, _ := strconv.Atoi(scanner.Text())
                if current-pivot > result {
                        result = current - pivot
                }
        }
        fmt.Println(result)
}
