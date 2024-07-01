package main

import "fmt"

func main() {
	var s, t string
	fmt.Scan(&s, &t)

	if s == t {
		fmt.Println("No")
		return
	}

	ms := 'a'
	for _, r := range s {
		if r > ms {
			ms = r
		}
	}
	mt := 'a'
	for _, r := range t {
		if r > mt {
			mt = r
		}
	}
	if ms <= mt {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
