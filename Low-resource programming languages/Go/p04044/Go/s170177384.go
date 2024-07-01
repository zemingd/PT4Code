package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Split(bufio.ScanWords)
	N := nextInt()
	_ = nextInt()

	S := make([]string, N)
	for i := range S {
		sc.Scan()
		S[i] = sc.Text()
	}
	sort.Strings(S)
	fmt.Println(strings.Join(S, ""))
}

func nextInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}
