package main

import "fmt"

func main() {
	var n int
	_, _ = fmt.Scan(&n)
	n1 := n % 1000

	s := 1000 - n1
	if n1==0{
		s = 0
	}
	fmt.Println(s)
}
