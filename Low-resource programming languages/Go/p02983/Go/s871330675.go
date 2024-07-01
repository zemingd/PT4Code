package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	var l, r int
	scanner.Scan()
	fmt.Sscan(scanner.Text(), &l, &r)

	m := 2019
	for i := l; i <= r; i++ {
		for j := i + 1; j <= r; j++ {
			if m > (i*j)%2019 {
				m = (i * j) % 2019
			}
			if m == 0 {
				fmt.Println(0)
				return
			}
		}
	}
	fmt.Println(m)
}
