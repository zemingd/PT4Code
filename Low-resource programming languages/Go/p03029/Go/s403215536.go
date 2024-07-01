package main

import "fmt"

func main() {
	var a, p int
	fmt.Scan(&a, &p)
	s := a * 3 + p
	ans := s / 2
	fmt.Println(ans)
}
