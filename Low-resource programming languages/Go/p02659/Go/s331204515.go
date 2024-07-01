package main

import "fmt"

func main() {
	var A uint64
	var B float64
	fmt.Scan(&A)
	fmt.Scan(&B)
	var B100 uint64
	B100 = uint64(B * 100)
	fmt.Println(A * B100 / 100)
}
