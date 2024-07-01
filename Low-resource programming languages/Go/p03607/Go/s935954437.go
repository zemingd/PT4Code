package main

import "fmt"

func nextInt() int {
	var x int
	fmt.Scan(&x)
	return x
}

func main() {
	n := nextInt()
	dic := map[int]struct{}{}

	for range make([]struct{}, n) {
		a := nextInt()
		if _, in := dic[a]; !in {
			dic[a] = struct{}{}
		} else {
			delete(dic, a)
		}
	}

	fmt.Println(len(dic))
}
