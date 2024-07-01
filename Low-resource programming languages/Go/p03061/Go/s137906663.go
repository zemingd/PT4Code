package main

import "fmt"

func gcd(a, b int) int {
    if b == 0 {
        return a
    } else {
        return gcd(b, a % b)
    }
}

func main() {
  var n, gcdval, tmp int
  max := 0
  
  fmt.Scan(&n)
  
  a := make([]int, n)
  for i := 0; i < n; i++ {
    fmt.Scan(&a[i])
  }
  
  if n==2 {
    if a[0]>a[1] {
      fmt.Println(a[0]) 
    } else {
      fmt.Println(a[1]) 
    }
    return
  }
  
  for j := 0; j < n; j++ {
    if j==0 {
      gcdval = a[1]
    } else {
      gcdval = a[0]
    }
    for i := 0; i < n-1; i++ {
      if j==0 || i==j { continue }
      if gcdval < a[i+1] {
        tmp = gcdval
        gcdval = a[i+1]
        a[i+1] = tmp
      }
      gcdval = gcd(gcdval, a[i+1]);
      
      if (gcdval > max) {
        max = gcdval
      }
    }
    
  }
  
  fmt.Println(max)
  
}

