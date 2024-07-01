package main

import "fmt"

func main() {
	var s int
	fmt.Scanln(&s)

	ns := make([]bool, 1000001)

	var m int
	n := s
	for i := 2; ; i++ {
		ns[n] = true

		if n%2 == 0 {
			n = n / 2
		} else {
			n = 3*n + 1
		}

		if ns[n] {
			m = i
			break
		}
	}

	fmt.Println(m)
}
