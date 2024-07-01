package main

import "fmt"

func main(){
  var A,B,C,X int
  fmt.Scan(&A)
  fmt.Scan(&B)
  fmt.Scan(&C)
  fmt.Scan(&X)
  // fmt.Println(A,B,C,X)
  result := 0
  i := X
  for a:=0; a<= A; a++{
    for b:=0; b<= B; b++{
      for c:=0; c<= C; c++{
        // fmt.Println(a,b,c)
        if a*500+b*100+c*50 == i{
          result +=1
        }
      }
    }
  }

  // fmt.Println(A,B,C,X)
  fmt.Println(result)
}
