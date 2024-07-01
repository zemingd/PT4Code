package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
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

	var indxs []int
	next := 0
	for i := 0; i < len(S); i++ {
		if S[i] == T[next] || (string(S[i]) == "?" && next > 0) {
			//fmt.Println(string(S[i]), S[i], T[next], next, i)
			if next == len(T)-1 {
				indxs = append(indxs, i)
				next = 0
				continue
			}
			next++
			continue
		}
		next = 0
	}

	if len(indxs) == 0 {
		fmt.Println("UNRESTORABLE")
		return
	}

	var cad []string
	for _, indx := range indxs {
		j := 0
		var tmpStr string
		for i := 0; i < len(S); i++ {
			if i >= indx-len(T)+1 && i <= indx {
				tmps := string(T[j])
				tmpStr += tmps
				j++
			} else if string(S[i]) == "?" {
				tmpStr += "a"
			} else {
				tmpStr += S[i]
			}
		}
		cad = append(cad, tmpStr)
	}
	//fmt.Println(cad)
	sort.Sort(SortBy(cad))
	fmt.Println(cad[0])
}

type SortBy []string

func (a SortBy) Len() int           { return len(a) }
func (a SortBy) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }
func (a SortBy) Less(i, j int) bool { return a[i] < a[j] }
