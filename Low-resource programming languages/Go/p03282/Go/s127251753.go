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
	} else if k == 1 {
		ans = "1"
	} else {
		ans = s[1]
	}

	fmt.Println(ans)
}
