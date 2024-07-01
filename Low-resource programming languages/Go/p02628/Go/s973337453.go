package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewReaderSize(os.Stdin, 1024*1024*10)

func main() {
	_, K := getStdinInt2()
	p := getStdinIntArr()

	min := math.MaxInt32
	list := combination(p, K)
	for _, l := range list {
		cnt := 0
		for _, val := range l {
			cnt += val
		}
		if cnt < min {
			min = cnt
		}
	}
	fmt.Printf("%d", min)
	/*
		fmt.Println(permutation([]int{50, 2, 1, 9}, 3))
	*/
	fmt.Printf("\n")
}

func getStdin() string {
	return readLine()
}
func getStdinInt() int {
	str := getStdin()
	rtn, _ := strconv.Atoi(str)
	return rtn
}
func getStdinInt2() (int, int) {
	list := getStdinIntArr()
	return list[0], list[1]
}
func getStdinInt3() (int, int, int) {
	list := getStdinIntArr()
	return list[0], list[1], list[2]
}
func getStdinIntArr() []int {
	str := getStdin()
	list := strings.Split(str, " ")
	rtn := make([]int, len(list))
	for idx, val := range list {
		rtn[idx], _ = strconv.Atoi(val)
	}
	return rtn
}

func getStdinIntArr64() []int64 {
	str := getStdin()
	list := strings.Split(str, " ")
	rtn := make([]int64, len(list))
	for idx, val := range list {
		rtn[idx], _ = strconv.ParseInt(val, 10, 64)
	}
	return rtn
}

func readLine() string {
	buf := make([]byte, 0, 0)
	for {
		l, p, e := sc.ReadLine()
		if e != nil {
			panic(e)
		}
		buf = append(buf, l...)
		if !p {
			break
		}
	}
	return string(buf)
}

func remove(ar []int, i int) []int {
	tmp := make([]int, len(ar))
	copy(tmp, ar)
	return append(tmp[0:i], tmp[i+1:]...)
}

func permutation_full(ar []int) [][]int {
	var result [][]int
	if len(ar) == 1 {
		return append(result, ar)
	}
	for i, a := range ar {
		for _, b := range permutation_full(remove(ar, i)) {
			result = append(result, append([]int{a}, b...))
		}
	}
	return result
}

//順列
func permutation(ar []int, n int) (result [][]int) {
	for _, a := range combination(ar, n) {
		result = append(result, permutation_full(a)...)
	}
	return
}

//組み合わせ
func combination(ar []int, n int) (result [][]int) {
	if n <= 0 || len(ar) < n {
		return
	}
	if n == 1 {
		for _, a := range ar {
			result = append(result, []int{a})
		}
	} else if len(ar) == n {
		result = append(result, ar)
	} else {
		for _, a := range combination(ar[1:], n-1) {
			result = append(result, append([]int{ar[0]}, a...))
		}
		result = append(result, combination(ar[1:], n)...)
	}
	return
}
