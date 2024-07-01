package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func next() string {
	sc.Scan()
	return sc.Text()
}
func main() {
	K := next()
	K_int, _ := strconv.Atoi(K)
	S := next()

	S_rune := []rune(S)
	if len(S_rune) <= K_int {
		fmt.Println(string(S_rune))
	} else {
		fmt.Println(string(S_rune[:K_int]) + "...")
	}
}