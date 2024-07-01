package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Scan()
	ss := strings.Split(sc.Text(), "")

	ct := 0
	max := 0
	for _, s := range ss {
		if s == "R" {
			ct++
			if max < ct {
				max = ct
			}
		} else {
			ct = 0
		}
	}
	fmt.Println(max)
}
