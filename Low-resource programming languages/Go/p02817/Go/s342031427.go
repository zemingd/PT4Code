package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func main() {
	stdin := bufio.NewScanner(os.Stdin)
	for stdin.Scan() {
		in := stdin.Text()
		out, _ := do(in)
		fmt.Println(out)
	}

}

func do(in string) (string, error) {
	s := strings.Split(in, " ")
	return s[1] + s[0], nil
}
