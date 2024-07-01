package main

import (
        "fmt"
)

func main() {
        N := 0
        isOk := false
        fmt.Scan(&N)
FOR_LABEL:
        for i := 1; i <= 9; i++ {
                for j := 1; j <= 9; j++ {
                        if N == i*j {
                                isOk = true
                                break FOR_LABEL
                        }
                }
        }
        if isOk {
                fmt.Println("Yes")
        } else {
                fmt.Println("No")
        }
}