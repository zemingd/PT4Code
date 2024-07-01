package main

import (
  "fmt"
  "strings"
)

func contains(s []string, e string) int {
	for i, c := range s{
		if c == e {
			return i
		}
	}
	return -1
}

func remove(s []string, index int) []string {
  var result []string
  for i,c := range s{
    if i != index {
      result = append(result, c)
    }
  }

  return result
}

func main() {
  var n int
  var s string
  var sn []string

  fmt.Scan(&n)
  for i:=0; i<n; i++ {
    fmt.Scan(&s)
    sn = append(sn, s)
  }

  var count = 0
  var s1, s2 []string
  for i:=0; i<n-1; i++ {
    SECOND:
    for j:=i+1; j<n; j++ {
      s1 = strings.Split(sn[i], "")
      s2 = strings.Split(sn[j], "")
      for _,e := range s2{
        index := contains(s1, e)
        if index == -1 {
          continue SECOND
        }
        s2 = remove(s2, index)
      }
      count++
    }
  }
  fmt.Println(count)
}
