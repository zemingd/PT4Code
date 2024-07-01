ackage main 

import (
        "fmt"
        "unicode/utf8"
)

func main () {
        var a,t string
        fmt.Scan(&a)
        ka := utf8.RuneCountInString(a)
        for i:= 0 ; i < ka ; i +=2{
                ii := i + 1
                t = t + a[i:ii]
        }
        fmt.Println(t)
}
