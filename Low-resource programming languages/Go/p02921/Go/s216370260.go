package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

// AtCoder Functions
var sc = bufio.NewScanner(os.Stdin)

func nextString() string {
	sc.Scan()
	return sc.Text()
}
func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	S := nextString()
	T := nextString()

	ret := 0
	Sary := strings.Split(S, "")
	Tary := strings.Split(T, "")
	for i := 0; i < 3; i++ {
		if Sary[i] == Tary[i] {
			ret++
		}
	}

	fmt.Println(ret)
}
