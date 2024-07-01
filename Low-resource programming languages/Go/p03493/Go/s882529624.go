package main

import "fmt"

func main() {
	var num int
	fmt.Scan(&num)

	s := 0
	for i := 0; i < 3; i++ {
		s = s + num%10
		num /= 10
	}
	fmt.Println(s)
}
