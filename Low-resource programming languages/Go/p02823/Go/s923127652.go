package main
 
import (
  "fmt"
  "math"
)
 
func foo(n, a, b, i int) int {
  if a==b {
    return i
  } else if a<b && abs(n,a,b)%2 != 1 {
    a = (a+1)%n
    b = (b-1)%n
    i = i+1
    return foo(n, a, b, i)
  } else if abs(n,a,b)%2 != 1 {
    a = (a-1)%n
    b = (b+1)%n
    i = i+1
    return foo(n, a, b, i)
  } else {
    if a > b {
      if n-a <= b-1 {
        if a != n {
          a = (a+1)%n
        }
        b = (b+1)%n
      } else {
        a = (a-1)%n
        if b != 1 {
          b = (b-1)%n
        }
      }
    } else {
      if n-b <= a-1 {
        a = (a+1)%n
        if b != n {
          b = (b+1)%n
        }
      } else {
        if a != 1 {
          a = (a-1)%n
        }
        b = (b-1)%n
      }    
    }
    i = i+1
    return foo(n, a, b, i)
  }
}
 
func abs(n, a, b int) int {
  return int(math.Abs(float64(a-b)))%n
}
 
func main() {
  var n, a, b int
  fmt.Scan(&n)
  fmt.Scan(&a)
  fmt.Scan(&b)
  fmt.Println(foo(n, a, b, 0))
}