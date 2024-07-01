package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	K := getStdinInt()
	S := getStdin()

	if len(S) <= K {
		fmt.Print(S)
	} else {
		fmt.Printf("%s%s", S[:K], "...")
	}

	fmt.Printf("\n")
}

func getStdin() string {
	sc.Scan()
	return sc.Text()
}
func getStdinInt() int {
	sc.Scan()
	rtn, _ := strconv.Atoi(sc.Text())
	return rtn
}
func getStdinIntArr() []int {
	sc.Scan()
	str := sc.Text()
	list := strings.Split(str, " ")
	rtn := make([]int, len(list))
	for idx, val := range list {
		rtn[idx], _ = strconv.Atoi(val)
	}
	return rtn
}
