package main

import "fmt"

func main() {
	var s, cnt int
	fmt.Scan(&s)

	for i:=0; i<3; i++{
		if s%10 == 1{
			cnt += 1
		}
		s /= 10
	}
	fmt.Println(cnt)
}
