package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	s := strings.Split(nextLine(), "")
	k, _ := strconv.Atoi(nextLine())
	ans := ""

	if s[0] != "1" {
		ans = s[0]
	} else {
		ans = "1"
		for i := 1; i < k; i++ {
			if s[i] != "1" {
				ans = s[i]
				break
			}
		}
	}

	fmt.Println(ans)
}
