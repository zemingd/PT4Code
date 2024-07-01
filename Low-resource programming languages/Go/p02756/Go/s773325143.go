package main

import "fmt"

func main() {
  var S string
  var Q int
  fmt.Scan(&S)
  fmt.Scan(&Q)
  
  T := make([]int,Q)
  F := make([]int,Q)
  s := make([]string,Q)
  
  for i:=range T {
    fmt.Scan(&T[i])
    if T[i] == 2 {
     fmt.Scan(&F[i],&s[i])
    }
  }
  rFlag := false

  for i:=range T {
    if T[i] == 1 {
      rFlag = !rFlag
    }
    if T[i] == 2 {
      if F[i] == 1 {
        if rFlag == false {
          S = s[i] + S 
        } else {
          S = S + s[i]
        }
      } else
        if rFlag == true {
          S = s[i] + S 
        } else {
          S = S + s[i]
        }
       }
    }
  if rFlag == false {
    fmt.Println(S)
  } else {
    fmt.Println(Reverse(S))
  }
}
func Reverse(s string) string {
	runes := []rune(s)
	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}
	return string(runes)
}