package main
import (
    "strings"
    "fmt"
)
func main(){
    var s string
    fmt.Scan(&s)
    fmt.Println(strings.Count(s, "1"))
}