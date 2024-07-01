package main

import "fmt"

func main() {
	var x int64
	fmt.Scan(&x)
	ret := int64(100)
	result := 0
	for {
		result++
		ret += int64(float64(ret) * 0.01)
		if ret >= x {
			break
		}
	}
	fmt.Println(result)
}
