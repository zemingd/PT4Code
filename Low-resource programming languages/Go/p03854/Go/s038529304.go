package main

import (
  "fmt"
  "strings"
)

func main() {
  var s string
  fmt.Scan(&s)
  enable := true
  for len(s)>0 {
	if strings.HasSuffix(s,"dream") {
	  s = s[:len(s)-len("dream")]
	} else if strings.HasSuffix(s,"dreamer") {
	  s = s[:len(s)-len("dreamer")]
	} else if strings.HasSuffix(s,"erase") {
	  s = s[:len(s)-len("erase")]
	} else if strings.HasSuffix(s,"eraser") {
	  s = s[:len(s)-len("eraser")]
	} else {
	  enable = false
	  break
	}
  }
  if enable {
	fmt.Println("YES")
  } else {
	fmt.Println("NO")
  }
}
