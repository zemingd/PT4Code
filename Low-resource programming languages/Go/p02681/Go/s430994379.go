package main

import "fmt"

func main() {
	var s, t string
	fmt.Scan(&s, &t)
	ss := append([]byte(s), t[len(t)-1])
	tt := []byte(t)

	if string(ss) == string(tt) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
