package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	var S, T [3]string
	line := nextLine()
	for pos, c := range line {
		S[pos] = string([]rune{c})
	}
	line = nextLine()
	for pos, c := range line {
		T[pos] = string([]rune{c})
	}

	ans := 0
	for i := 0; i < 3; i++ {
		if S[i] == T[i] {
			ans++
		}
	}
	fmt.Printf("%d", ans)

}
