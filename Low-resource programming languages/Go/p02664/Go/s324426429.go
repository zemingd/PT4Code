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

func absFloat64(a float64) float64 {
	if a >= 0 {
		return a
	} else {
		return -a
	}
}

func minFloat64(a, b float64) float64 {
	if a > b {
		return b
	} else {
		return a
	}
}

func str2Int(s string) int {
	n, _ := strconv.Atoi(s)
	return n
}

//Main
var sc = bufio.NewScanner(os.Stdin)

var T string

func main() {
	sc.Split(bufio.ScanWords)
	T = nextStr()
	ans := ""
	for i := 0; i < len(T); i++ {
		if string(T[i]) == "?" {
			if i == 0 || i == len(T)-1 {
				ans += "D"
			} else if string(T[i+1]) == "?" && string(T[i-1]) == "D" {
				ans += "P"
			} else {
				ans += "D"
			}
		} else {
			ans += string(T[i])
		}
	}
	fmt.Println(ans)
}
