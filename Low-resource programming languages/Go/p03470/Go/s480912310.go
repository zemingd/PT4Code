package main
import(
    "fmt"
)

func main(){
    var n, buf int
    fmt.Scan(&n)
    mp := make(map[int]bool)
    for i := 0; i < n; i++ {
        fmt.Scan(&buf)
        mp[buf] = true
    }
    fmt.Println(len(mp))
}