package main
import "fmt"
 
func main() {
    var A int
    fmt.Scan(&A)
var yebi int = A/3600 
A -= yebi*3600
var hoge  int = A/60
A -= hoge*60 
    fmt.Print(yebi,":",hoge,":",A)
   fmt.Print(":")
   fmt.Print(hoge)
   fmt.Print(":")
   fmt.Println(A)
}
