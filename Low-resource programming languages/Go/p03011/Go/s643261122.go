package main

import (
	"fmt"
)

func min(m, n int) int {
  if n < m {
    return n
  }
  return m
}

func main () {
	var p, q, r int
	fmt.Scan(&p, &q, &r)
  	a := p + q
  	b := q + r
	c := r + p
  	fmt.Println(min(min(a, b), c))
}