import (
   "bufio"
    "os"
     "fmt"
)

var sc = bufio.NewScanner(os.Stdin)

func main(){
     var a, b int
     r := "No"
    if sc.Scan() {
        a = sc.Int()
    }
    if sc.Scan() {
        b = sc.Int()
    }
    for c := 1; c <= 3; c ++ {
          tmp := a * b * c
          if (tmp % 2) == 1{
               r = "Yes"
               break
          }
     }
     fmt.Println(r)
   }