package main

import "fmt"

func main() {
	var h, n int
	fmt.Scan(&h, &n)
	a := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}
	damage := 0
	for _, v := range a {
		damage += v
	}
	//fmt.Println(damage)
	attack := h - damage
	fmt.Println(attack)
	if h == 0 || h < 0 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
