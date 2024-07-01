package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	m := map[int]bool{1: true, 2: true, 3: true}
	delete(m, a)
	delete(m, b)
	for k, _ := range m {
		fmt.Println(k)
		break
	}
}
