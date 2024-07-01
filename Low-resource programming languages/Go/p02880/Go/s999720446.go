package main

import(
    "fmt"
)

func main() {
    var n int
    fmt.Scan(&n)
    word := "No"
    for i:=1;i<=9;i++ {
        for j:=i;j<=9;j++ {
            if n == i*j {
                word = "Yes"
            }
        }
    }

    fmt.Println(word)
}
