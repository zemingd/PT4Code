package main

import "fmt"

func main(){
  var a,b int
  fmt.Scan(&a,&b)

  fmt.Printf("%d", lcm(a,b))
}

func gcd(a int, b int)int{
  if b>a{
    tmp := b
    b = a
    a = tmp
  }
  if a == 1 || b == 1{
    return 1
  }
  if a == b {
    return a
  } else {
    return gcd(b,a%b)
  }
}

func lcm(a int, b int)int{
  return a*b/gcd(a,b)
}