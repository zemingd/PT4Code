package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func nextString() string {
	sc.Scan()
	return sc.Text()
}
func main() {
	sc.Split(bufio.ScanWords)
	S, T := nextString(), nextString()

	fmt.Println(T + S)
}
