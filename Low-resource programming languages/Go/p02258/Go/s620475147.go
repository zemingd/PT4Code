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
        var max int                          //0が入ります
        scanner.Scan()
        min, _ := strconv.Atoi(scanner.Text())
        for i := 1; i < n; i++ {
                ok := scanner.Scan()
                if !ok {
                        break
                }
                current, _ := strconv.Atoi(scanner.Text())
                if min > current {
                        min = current
                }
                if max <= current {
                        max = current
                }
        }
        fmt.Println(max - min)
}
