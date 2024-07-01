package main
import f "fmt"
func main(){
    var (
        a int
        b int
        c int
        )
    f.Scan(&a, &b, &c)
    if a < b && b < c {
        f.Println("Yes")
    }else{
        f.Println("No")
    }
}

