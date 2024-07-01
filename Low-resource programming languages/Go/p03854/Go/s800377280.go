package main
import(
    "fmt"
    "os"
    "strings"
)

func main(){
    var s string
    fmt.Scan(&s)
    words := []string{"dream", "dreamer", "erase", "eraser"}
    for s != "" {
        op := false
        for _, v := range words {
            if strings.HasSuffix(s, v) {
                s = strings.TrimRight(s, v)
                op = true
            }
        }
        if !op {
            fmt.Println("NO")
            os.Exit(0)
        }
    }
    fmt.Println("YES")
}