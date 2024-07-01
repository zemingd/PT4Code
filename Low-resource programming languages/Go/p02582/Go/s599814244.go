package main

import (
    "fmt"
)

func main() {
    var str string
    fmt.Scanf("%s", &str)

    count := 0
    maxCount := 0
    for i := 0; i < len(str); i++ {
        if str[i] == 'R' {
            count++
        } else {
            if count != 0 && maxCount < count {
                maxCount = count
            }
            count = 0
        }
    }

    fmt.Println(maxCount)
}