package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func getStdin() []string {
	stdin := bufio.NewScanner(os.Stdin)
	lines := []string{}
	for stdin.Scan() {
		if err := stdin.Err(); err != nil {
			fmt.Fprintln(os.Stderr, err)
		}
		lines = append(lines, stdin.Text())
	}
	return lines
}

func main() {
	lines := getStdin()
	str := lines[0]

	q, _ := strconv.Atoi(lines[1])

	rev := 0
	for i := 0; i < q; i++ {
		line := lines[i+2]
		items := strings.Split(line, " ")
		t := items[0]
		if t == "1" {
			rev++
		} else if t == "2" {
			f := items[1]
			c := items[2]
			if (f == "1" && rev%2 == 0) || (f == "2" && rev%2 == 1) {
				str = c + str
			} else if (f == "2" && rev%2 == 0) || (f == "1" && rev%2 == 1) {
				str = str + c
			}
		}
	}
	if rev%2 == 1 {
		l := len(str)
		for i := 0; i < l; i++ {
			fmt.Printf("%c", str[l-i-1])
		}
		fmt.Println()
	} else {
		fmt.Println(str)
	}
}
