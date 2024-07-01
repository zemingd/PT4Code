package main
import(
    "fmt"
    "strings"
)

func main(){
    var s string
    fmt.Scan(&s)
    pt := len(s)
    words := []string{"dream", "dreamer", "erase", "eraser"}
    for pt > 3 {
        _pt := pt
        for _, v := range words {
            if strings.HasSuffix(s, v) {
                pt -= len(v)
            }
        }
        if _pt == pt {
            pt = -1
        }
    }
    if pt == 0 {
        fmt.Println("YES")
    } else {
        fmt.Println("NO")
    }
}