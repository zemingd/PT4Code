package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	res := doubleFactorial(n)
	fmt.Println(res)
	//now count trailing zeroes!
	count := 0
	for true {
		if res%10 != 0 {
			break
		}
		res = res / 10
		//fmt.Println(res)
		count++
	}
	fmt.Println(count)
}

func doubleFactorial(n int) int64 {
	var res int64 = 1
	if n < 2 {
		return res
	}
	var i int64
	i = int64(n)
	for i >= 2 {
		fmt.Println(res)
		res *= i
		i -= 2
	}
	return res
}