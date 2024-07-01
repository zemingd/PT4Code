package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

//Util
func nextStr() string {
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

func maxInt(a, b int) int {
	if a > b {
		return a
	} else {
		return b
	}
}

func minInt(a, b int) int {
	if a > b {
		return b
	} else {
		return a
	}
}

func absInt(a int) int {
	if a >= 0 {
		return a
	} else {
		return -a
	}
}

//Main
var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Split(bufio.ScanWords)
	S, T := nextStr(), nextStr()
	ans := "Yes"
	lenS, lenT := len(S), len(T)
	if lenS < 1 && lenS > 10 {
		ans = "No"
	}
	if lenT != lenS+1 {
		ans = "No"
	}
	if S != T[:lenS] {
		ans = "No"
	}

	fmt.Println(ans)

}
