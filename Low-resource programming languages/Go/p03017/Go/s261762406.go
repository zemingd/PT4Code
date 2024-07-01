package main
 
import (
	"fmt"
)
 
func main() {
  var (
    n int,
    a int,
	b int,
	c int,
	d int,
	s string
  )
  fmt.Scan(&n)
  fmt.Scan(&a)
  fmt.Scan(&b)
  fmt.Scan(&c)
  fmt.Scan(&d)
  fmt.Scan(&s)
 
  ans := "No"
  if c < d {
    sharpTwoFlg := false
    sc := 0
    for i := a; i < c; i++ {
      if s[i] == '#' {
        sc++
        if sc >= 2 {
          sharpTwoFlg = true
          break
        }
        continue
      }
      sc = 0
    }
 
    sc = 0
    for i := b; i < d; i++ {
      if s[i] == '#' {
        sc++
        if sc >= 2 {
          sharpTwoFlg = true
          break
        }
        continue
      }
      sc = 0
    }
    
    if sharpTwoFlg {
      fmt.Println("No")
    } else {
      fmt.Println("Yes")
    }
    
  } else {
    dotThreeFlg := false
    sharpTwoFlg := false
 
    dotCount := 0
    sc := 0
    for i := b - 2; i <= d; i++ {
      if s[i] == '.' {
        dotCount++
        if dotCount >= 3 {
          dotThreeFlg = true
        }
        sc = 0
      } else {
        sc++
        if sc >= 2 {
          sharpTwoFlg = true
          break
        }
        dotCount = 0
      }
    }
    
    sc = 0
    for i := a; i < c; i++ {
      if s[i] == '#' {
        sc++
        if sc >= 2 {
          sharpTwoFlg = true
          break
        }
        continue
      }
      sc = 0
    }
 
    if !sharpTwoFlg && dotThreeFlg {
      fmt.Println("Yes")
    }
  } 
}