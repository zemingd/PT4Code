package main

import "fmt"

func main() {
	var s1, s2, s3 int
	fmt.Scan(&s1&s2&s3)
	sn := 0
	if s1 == 1 {
		sn += 1
	}
	if s2 == 1 {
		sn += 1
	}
	if s3 == 1 {
		sn += 1
	}
	fmt.Printf("%d", sn)
}
