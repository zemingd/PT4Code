package main

import "fmt"

func main() {
	var n int
	fmt.Scanln(&n)

	if n == 1 {
		fmt.Println(0)
	}

	n2 := n

	list := make([]int, 0)
	for i := 2; i <= n/2; i++ {
		for n2%i == 0 {
			n2 /= i
			list = append(list, i)
		}
	}

	fmt.Println(list)

	if len(list) == 0 {
		fmt.Println(0)
	}

	listNumbers := make([]int, 1)
	b := list[0]
	for _, v := range list {
		if v == b {
			listNumbers[0]++
		} else {
			b = v
			listNumbers = append(listNumbers, 1)
		}
	}

	var prod int
	for _, v := range listNumbers {
		c := 1
		for v-c >= 0 {
			v -= c
			prod++
			c++
		}
	}
	fmt.Println(prod)
}
