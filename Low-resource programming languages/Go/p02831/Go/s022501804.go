package main
 
import("fmt")
 
func main(){
  var a,b int
  fmt.Scan(&a, &b)
  fmt.Print(lcm(a,b))
}

func gcd(a,b int) int {
  if b ==0 {
    return a
  }else {
    return gcd(b, a%b)
  }
}

func lcm(a,b int) int {
  return a*b / gcd(a,b)
}