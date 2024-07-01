package main

import "fmt"

func main() {
	var A, B, C int
	fmt.Scan(&A, &B, &C)
	ret := C - A - B
	if ret < 0 {
		ret = 0
	}
	fmt.Println(ret)
}
