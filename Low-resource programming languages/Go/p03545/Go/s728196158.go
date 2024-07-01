package main
import "fmt"
func add(a, b int) int {return a+b}

func sub(a, b int) int {return a-b}

func main(){
  var s string
  fmt.Scan(&s)
  ops:=[]func(a,b int)int{add,sub}
  name:=[]string{"+","-"}
  a:=int(s[0])
  b:=int(s[1])
  c:=int(s[2])
  d:=int(s[3])
  for i, op1 ：= range ops {
    for j, op2 ：= range ops {
      for k, op3 ：= range ops {
        if op1(a, op2(b, op3(c, d))) == 7 {
          fmt.Printf("%d%s%d%s%d%s%d\n")
          return
        }
      }
    }
  }
  
}