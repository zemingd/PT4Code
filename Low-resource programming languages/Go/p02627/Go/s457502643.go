package main

import (
    "bufio"
    "fmt"
    "os"
    "strings"
)

func main() {
    scanner := bufio.NewScanner(os.Stdin)
    scanner.Scan()

                sr := ""
                xs := scanner.Text()
          u := strings.ToUpper(xs)
          l := strings.ToLower(xs)

                if u == xs {
                        sr = "A"
                } else if l == xs {
                        sr = "a"
                }
    fmt.Println(sr)
}
