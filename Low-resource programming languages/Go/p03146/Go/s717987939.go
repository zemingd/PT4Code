package main
import (
  "fmt"
)

func f(n int) int{
  if n % 2 == 0{
    return n/2
  }else{
    return 3*n+1
  }
}

func a(i int, s int) int{
  if i == 1{
    return s
  }else{
    return f(a(i-1, s))
  }
}

func main(){
  var s int
  fmt.Scan(&s)
  for i := 1; i<=1000000; i++{
    for j:=1; j<i; j++{
      if a(i,s) == a(j,s){
        fmt.Print(i)
        return
      }
    }
  }
}

