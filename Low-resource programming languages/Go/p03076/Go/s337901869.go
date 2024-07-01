package main

import "fmt"

func main() {
        var A, B, C, D, E int
        fmt.Scan(&A, &B, &C, &D, &E)

        arr := []int{A, B, C, D, E}
        l := len(arr)
        for i := 0; i < l; i++ {
                for j := i; j < l; j++ {
                        a := arr[i] % 10
                        b := arr[j] % 10
                        if a == 0 {
                                a += 10
                        }
                        if b == 0 {
                                b += 10
                        }
                        if a < b {
                                tmp := arr[i]
                                arr[i] = arr[j]
                                arr[j] = tmp
                        }
                }
        }

        sum := 0
        for i := 0; i < l; i++ {
                sum += arr[i]
                if i != l-1 {
                        a := arr[i] % 10
                        if a != 0 {
                                sum += 10 - (arr[i] % 10)
                        }
                }
        }
        fmt.Print(sum)
}
