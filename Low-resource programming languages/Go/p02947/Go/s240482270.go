package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var stdin = bufio.NewScanner(os.Stdin)

func main() {
	n := func() int { stdin.Scan(); i, _ := strconv.Atoi(stdin.Text()); return i }()
	s := make([]string, n)
	for i := 0; i < n; i++ {
		stdin.Scan()
		s[i] = stdin.Text()
	}
	count := 0
	for i := 0; i < n; i++ {
		for j := i + 1; j < n; j++ {
			tmp := s[i]
			for k := 0; k < len(s[j]); k++ {
				tmp = strings.Replace(tmp, s[j][k:k+1], "", 1)
			}
			if tmp == "" {
				count++
			}
		}
	}
	fmt.Println(count)
}