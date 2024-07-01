package main

import "fmt"

func main() {

	mainA()

}

func mainA() {
	var a, b, res int64
	fmt.Scan(&a, &b)
	res = solveA(a, b)
	fmt.Println(res)
}

func solveA(a int64, b int64) int64 {
	var res int64
	if b%a == 0 {
		res = a + b
	} else {
		res = b - a
	}

	return res
}
