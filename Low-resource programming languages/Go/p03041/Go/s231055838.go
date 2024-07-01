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
	nk := strings.Fields(nextLine())
	n, _ := strconv.Atoi(nk[0])
	k, _ := strconv.Atoi(nk[1])
	word := nextLine()
	for i := 0; i < n; i++ {
		if i == k-1 {
			fmt.Printf("%s", strings.ToLower(string(word[i])))
		} else {
			fmt.Printf("%s", string(word[i]))
		}
	}
}
