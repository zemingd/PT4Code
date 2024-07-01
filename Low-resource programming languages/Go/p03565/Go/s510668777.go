package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

var (
	sDash string
	t     string
	s     string
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()
	sDash = scanner.Text()
	scanner.Scan()
	t = scanner.Text()

	//check if t can apply to sDash
	for i := len(sDash) - len(t); 0 <= i; i-- {
		k := 0
		match := false
		for j := i; j < i+len(t); j++ {
			fmt.Printf("i %d, j %d, k %d\n", i, j, k)
			if sDash[j] != '?' && sDash[j] != t[k] {
				match = false
				break
			}

			k++
			match = true
		}
		if match {
			s = sDash[:i] + t + sDash[(i+len(t)):]
			s = strings.Replace(s, "?", "a", -1)
			fmt.Println(s)
			return
		}

	}
	fmt.Println("UNRESTORABLE")
}
