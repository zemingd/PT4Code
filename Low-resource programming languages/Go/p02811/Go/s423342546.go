package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	N := readInt()

	All := ParseAllNum(getAllNum(getIArray(N)...))
	P, Q, Pr, Qr := 0, 0, -1, -1

	Loop(0, N, func(i int) {
		P += readInt() * Pow(10, N-i) / 10
	})
	Loop(0, N, func(i int) {
		Q += readInt() * Pow(10, N-i) / 10
	})

	sort.Ints(All)

	for i, v := range All {
		if v == P {
			Pr = i + 1
		}
		if v == Q {
			Qr = i + 1
		}
		if Pr != -1 && Qr != -1 {
			break
		}
	}
	fmt.Println(abs(Pr - Qr))
}

func ParseAllNum(in [][]int) []int {
	Result := make([]int, len(in))
	for i, v := range in {
		R := 0
		Loop(0, len(v), func(i int) {
			R += v[i] * Pow(10, len(v)-i) / 10
		})
		Result[i] = R
	}
	return Result
}

func getIArray(l int) []int {
	Result := make([]int, l)
	Loop(0, l, func(i int) {
		Result[i] = i + 1
	})
	return Result
}

func getAllNum(source ...int) [][]int {
	Result := make([][]int, 0, len(source))
	for _, v := range source {
		excluded := exclude(source, v)
		if len(excluded) == 1 {
			Result = append(Result, []int{v, excluded[0]})
		} else {
			a := getAllNum(excluded...)
			for _, av := range a {
				o := make([]int, len(av)+1)
				o[0] = v
				for avi, avv := range av {
					o[avi+1] = avv
				}
				Result = append(Result, o)
			}
		}
	}

	return Result
}

func exclude(i []int, t int) []int {
	Result := make([]int, len(i)-1)
	index := 0
	for _, c := range i {
		if c != t {
			Result[index] = c
			index++
		}
	}
	return Result
}

/////////////////////////////////////////
var scanner = bufio.NewScanner(os.Stdin)

func init() {
	scanner.Split(bufio.ScanWords)
	//scanner.Split(bufio.ScanLines)
}

func readInt() int {
	scanner.Scan()
	t, _ := strconv.Atoi(scanner.Text())
	return t
}

func Loop(start, end int, f func(i int)) {
	for i := start; i < end; i++ {
		f(i)
	}
}

func Pow(a, b int) int {
	result := a
	Loop(0, b-1, func(i int) {
		result = result * a
	})

	return result
}

func abs(i int) int {
	if i >= 0 {
		return i
	} else {
		return i * -1
	}
}