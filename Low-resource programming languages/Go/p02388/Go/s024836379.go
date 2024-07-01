package main 

 import(
     "bufio"
     "fmt"
     "os"
     
     )
var r = bufio.NewReader(os.Stdin)

func main(){
     var x int
     fmt.Fscan(r,&x)
     
     
     x2 := x * x*x
     fmt.Println(x2)
}
