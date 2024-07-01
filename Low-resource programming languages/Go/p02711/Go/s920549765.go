package main

import (
	"bufio"
	"fmt"
	"os"
	"regexp"
	"strconv"
)

var stdin = bufio.NewScanner(os.Stdin)

func main() {
	stdin.Split(bufio.ScanWords)
	var N int
	N = nextInt()
	Nst := strconv.Itoa(N)
	r := regexp.MustCompile(`7+?`)
	if r.MatchString(Nst) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

func nextInt() int {
	stdin.Scan()
	i, err := strconv.Atoi(stdin.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func nextStr() string {
	stdin.Scan()
	i := stdin.Text()
	// if err != nil {
	// 	panic(err)
	// }
	return i
}
