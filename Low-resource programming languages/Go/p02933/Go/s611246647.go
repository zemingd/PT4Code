ackage main

import "fmt"

func main() {
        var a int
        var s string
        fmt.Scanf("%d", &a)
        fmt.Scanf("%s", &s)

        if a < 3200 {
                fmt.Println("red")
        } else {
                fmt.Println(s)
        }

}