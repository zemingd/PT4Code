package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

var (
	sc    = bufio.NewScanner(os.Stdin)
	words = [4]string{"maerd", "remaerd", "esare", "resare"}
)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func solve(target string) bool {

	if len(target) == 0 {
		return true
	}

	for _, v := range words {
		if strings.HasPrefix(target, v) {
			return solve(target[len(v):])
		}
	}

	return false
}

func main() {
	var input string
	fmt.Scan(&input)

	if res := solve(input); res {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}
