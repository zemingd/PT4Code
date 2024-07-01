package main

import "fmt"

func main() {
	n := 0
	var a []int
	a = append(a, 0)

	fmt.Scanf("%d", &n)
	for i := 0; i < n; i++ {
		tmp := 0
		fmt.Scanf("%d", &tmp)
		a = append(a, tmp)
	}

	m := 1
	for i := 1; ; i++ {
		m = a[m]
		if m == 1 {
			fmt.Println("-1")
			return
		}
		if m == 2 {
			fmt.Println(i)
			return
		}
	}
}
