package main

import ("fmt")

func main() {
    var a, b, c, x int
    fmt.Scan(&a)
    fmt.Scan(&b)
    fmt.Scan(&c)
    fmt.Scan(&x)

    ways := 0
    for i := 0; i < a; i++ {
        if 500 * i > x {
            break;
        }
        for j := 0; j < b; j++ {
            tmp := 500 * i + 100 * j
            if tmp > x {
                break;
            }
            if (x - tmp) % 50 == 0 && (x - tmp) / 50 <= c {
                ways++
            }
        }
    }

    fmt.Println(ways)
}