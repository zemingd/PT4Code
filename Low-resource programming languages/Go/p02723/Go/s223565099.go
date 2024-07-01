package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func solve(in string) bool {
	return in[2] == in[3] && in[4] == in[5]
}

func solveStr(in string) string {
	if solve(in) {
		return "Yes"
	}
	return "No"
}

func main() {
	//s := nextLine()
	fmt.Println(solveStr(s))
}