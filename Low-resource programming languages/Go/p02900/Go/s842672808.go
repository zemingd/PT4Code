package main
import (
  "fmt"
)

func gcd(a, b int) int {
  if b == 0 {
    return a
  }
  return gcd(b, a%b)
}

func primeFactorsCnt(n int) int {
  result := make(map[int]bool)
  result[1] = true
  for n%2 == 0 {
    result[2] = true
    n /= 2
  }
  
  for i := 3; i*i <= n; i += 2 {
    for n%i == 0 {
      result[i] = true
      n /= i
    }
  }
  
  if 2 < n {
    result[n] = true
  }
  return len(result)
}

func main() {
  var a, b int
  fmt.Scan(&a, &b)
  num := gcd(a, b)
  result := primeFactorsCnt(num)
  fmt.Println(result)
}