package main
import(
    "fmt"
)

func main(){
    var a string
    var an  int
        fmt.Scan(&a)
    for i := 0 ; i < len(a); i ++{
        b := a[i:i+1]
        if b == "1"{
            an += 1
    }
    }
    fmt.Println(an)
}