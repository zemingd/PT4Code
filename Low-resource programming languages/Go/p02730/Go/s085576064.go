package main

import "fmt"

func main() {
	var S string
	fmt.Scanf("%s\n", &S)

	l := len(S)
	r := []rune(S)
	var a, b, c bool
	left := r[:l/2]
	right := r[l/2+1:]
	if string(left) == Reverse(string(right)) {
		a = true
	}
	piv1 := len(left) / 2
	if len(left)%2 != 0 {
		piv1 += 1
	}
	if string(left[:piv1-1]) == Reverse(string(left[piv1:])) {
		b = true
	}

	piv2 := len(right) / 2
	if len(right)%2 != 0 {
		piv2 += 1
	}

	if string(right[:piv2-1]) == Reverse(string(right[piv2:])) {
		c = true
	}
	if a && b && c {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

func Reverse(s string) string {
	runes := []rune(s)
	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}
	return string(runes)
}
