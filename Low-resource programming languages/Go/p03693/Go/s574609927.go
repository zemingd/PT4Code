package main

import "fmt"

func main() {
  var a, b, c int
    fmt.Scanf("%d %d %d", &a, &b, &c)

    l := 100*a + 10*b + c

    if (l % 4 == 0) {
        fmt.Println("YES")
    } else {
        fmt.Println("NO")
    }
}
