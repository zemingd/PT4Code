package main

import "fmt"

func divBy2(num int) (count int) {
	for count = 0; num%2 == 0; count++ {
		num /= 2
	}
	return count
}

func main() {
	var n int
	var a []int

	fmt.Scan(&n)
	for i := 0; i < n; i++ {
		var i int
		fmt.Scan(&i)
		a = append(a, i)
	}

	count := 0
	for _, v := range a {
		count += divBy2(v)
	}
	fmt.Println(count)
}
