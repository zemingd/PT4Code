package main
import (
    "fmt"
    "strings"
)

func main(){
    var s string
    var ls []string
    prev := "hoge"
    flag := true
    fmt.Scan(&s)
    ls = strings.Split(s,"")
    for _,moji := range ls{
        if moji==prev{
            fmt.Println("Bad")
            flag = false
            break
        }
        prev = moji
    }
    if flag {
        fmt.Println("Good")
    }
}