package main
import ("fmt")

func touch(X, Y, Z int) int {
 var A int  = X / Z
 if Y < A {
   return 0
 }
return 1
}

func main(){
  var D, T, S int
  fmt.Scan(&D, &T, &S)
  if touch(D, T, S) == 1 {
    fmt.Println("Yes")
  }else {
    fmt.Println("No")
  }
  
}
