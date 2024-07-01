package main

import (
	"fmt"
	"os"
)

func ReadInt(f *os.File) int {
	var n int
	fmt.Fscanf(f, "%d", &n)
	return n
}

func main() {
	A := ReadInt(os.Stdin)
	B := ReadInt(os.Stdin)
	if B%A == 0 {
		fmt.Println(A + B)
	} else {
		fmt.Println(B - A)
	}
}