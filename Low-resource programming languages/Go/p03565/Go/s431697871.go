package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
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

//Main
var sc = bufio.NewScanner(os.Stdin)
var S, T []string

func main() {
	sc.Split(bufio.ScanWords)
	tmpS, tmpT := nextStr(), nextStr()

	S = strings.Split(tmpS, "")
	T = strings.Split(tmpT, "")

	indx := -1
	next := 0
	for i := 0; i < len(S); i++ {
		if S[i] == T[next] || (string(S[i]) == "?" && next > 0) {
			//fmt.Println(string(S[i]), S[i], T[next], next, i)
			if next == len(T)-1 {
				//fmt.Println(string(S[i]), S[i], T[next], next, i)
				indx = i
				break
			}
			next++
			continue
		}
		next = 0
	}

	if indx == -1 {
		fmt.Println("UNRESTORABLE")
		return
	}

	j := 0
	for i := indx - len(T) + 1; i <= indx; i++ {
		if string(S[i]) == "?" {
			tmps := string(T[j])
			S[i] = tmps
		}
		j++
	}

	buf := bufio.NewWriter(os.Stdout)
	for _, v := range S {
		if string(v) == "?" {
			buf.Write([]byte(fmt.Sprintf("a")))
			continue
		}
		buf.Write([]byte(fmt.Sprintf("%s", v)))
	}
	buf.Write([]byte("\n"))
	buf.Flush()
}
