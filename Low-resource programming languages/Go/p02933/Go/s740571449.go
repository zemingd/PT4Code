package main

import "fmt"

func main() {
        fmt.Println("vim-go")
        var a int
        var s string
        fmt.scanf("%d", &a)
        fmt.scanf("%s", &s)

        if a < 3200 {
                fmt.Println(s)
        } else {
                fmt.Println("red")
        }

}