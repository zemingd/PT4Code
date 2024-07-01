package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	K := getStdinInt()
	S := getStdin()

	if len(S) <= K {
		fmt.Printf("%s\n", S)
	} else {
		fmt.Printf("%s%s\n", S[:K], "...")
	}
}

var sc = bufio.NewScanner(os.Stdin)

func getStdin() string {
	sc.Scan()
	return sc.Text()
}
func getStdinInt() int {
	str := getStdin()
	rtn, _ := strconv.Atoi(str)
	return rtn
}
