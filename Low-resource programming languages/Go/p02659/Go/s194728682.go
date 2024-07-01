package main

import "fmt"

func main() {

	var a int64
	var b float32
	var s float32

	fmt.Scan(&a)
	fmt.Scan(&b)

	s = float32(a) * b
	v := fmt.Sprintf("%f" , 12.3456)
	fmt.Println(v)
}
