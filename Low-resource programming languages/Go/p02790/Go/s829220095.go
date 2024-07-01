package main
import "fmt"
import "strconv"
import "strings"

func strToInt(s string) int {
    i, err := strconv.Atoi(s)
    if err != nil{
        fmt.Println(err)
    }
    return i
}

func main(){
    // Your code here!
    var a, b string
    fmt.Scan(&a, &b)
    s := strings.Repeat(a, strToInt(b))
    t := strings.Repeat(b, strToInt(a))
    
    if s < t{
        fmt.Println(s)
    }else{
        fmt.Println(t)
    }
}
