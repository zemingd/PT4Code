package main
import (
    "fmt"
    "math"
    "strconv"
)
func main(){
    var s string
    fmt.Scan(&s)
    fmt.Println(math.Min(Count(s), Count(Reverse(s))))
}

func Count(s string) float64 {
    var zero, one float64
    for i := 0; i< len(s); i++{
        if strconv.Itoa(i%2) == string(s[i]){
            zero ++
        }else{
            one ++
        }
    }
    return math.Min(zero, one)
}

func Reverse(s string) string{
    runes := []rune(s)
    for i, j := 0, len(runes)-1; i<j; i, j= i+1, j-1{
        runes[i], runes[j] = runes[j], runes[i]
    }
    return string(runes)
}
