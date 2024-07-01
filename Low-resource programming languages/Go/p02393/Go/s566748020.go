package main

import "fmt"

func swap(a *int, b *int) {
	tmp := *a
	*a = *b
	*b = tmp
}

func main() {
	var a int
	var b int
	var c int
	fmt.Scanf("%d%d%d", &a, &b, &c)
	if a > b {
		swap(&a, &b)
	}
	if b > c {
		swap(&b, &c)
	}
	if a > b {
		swap(&a, &b)
	}
	fmt.Printf("%d %d %d\n", a, b, c)
}

