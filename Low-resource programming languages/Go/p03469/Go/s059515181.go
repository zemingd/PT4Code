package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)

	var s string
	if sc.Scan() {
		s = sc.Text()
	}

	var result = strings.Replace(s, "2017", "2018", 1)

	fmt.Println(result)
}