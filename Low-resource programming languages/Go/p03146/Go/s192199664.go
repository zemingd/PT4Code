package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	var s int
	scanner.Scan()
	fmt.Sscanf(scanner.Text(), "%d", &s)

	mp := make(map[int]struct{})
	prev := s
	mp[prev] = struct{}{}
	for i := 2; i < 1000001; i++ {
		prev = f(prev)
		if _, e := mp[prev]; e {
			fmt.Println(i)
			return
		}
		mp[prev] = struct{}{}
	}
}

func f(n int) int {
	if n%2 == 0 {
		return n / 2
	}
	return 3*n + 1
}
