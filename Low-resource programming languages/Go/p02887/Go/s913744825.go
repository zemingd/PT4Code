package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	stdin := bufio.NewScanner(os.Stdin)
	stdin.Scan()
	stdin.Scan()
	s := stdin.Text()

	var pre rune
	num := 0
	for _, v := range s {
		if pre != v {
			num++
			pre = v
		}
	}
	fmt.Println(num)
}
