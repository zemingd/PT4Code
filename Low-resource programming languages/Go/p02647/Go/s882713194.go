package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewReaderSize(os.Stdin, 1024*1024*10)

func main() {
	list1 := getStdinIntArr64()
	A := getStdinIntArr64()
	N := list1[0]
	K := list1[1]
	Anum := make([]int64, N)

	var i int64 = 0
	var m int64 = 0
	var m2 int64 = 0
	var k int64 = 0
	var d int64 = 0

	for m2 = 0; m2 < N; m2++ {
		Anum[m2] = 1
		d = 1
		for k = m2 - 1; k >= 0; k-- {
			if A[k]-d == 0 {
				Anum[m2]++
				break
			}
			if A[k]-d >= 0 {
				Anum[m2]++
			}
			d++
		}
		d = 1
		for k = m2 + 1; k < N; k++ {
			if A[k]-d == 0 {
				Anum[m2]++
				break
			}
			if A[k]-d >= 0 {
				Anum[m2]++
			}
			d++
		}
	}

	for i = 0; i < K; i++ {
		for m = 0; m < N; m++ {
			A[m] = Anum[m]

		}

		for m2 = 0; m2 < N; m2++ {
			Anum[m2] = 1
			d = 1
			for k = m2 - 1; k >= 0; k-- {
				if A[k]-d == 0 {
					Anum[m2]++
					break
				}
				if A[k]-d >= 0 {
					Anum[m2]++
				}
				d++
			}
			d = 1
			for k = m2 + 1; k < N; k++ {
				if A[k]-d == 0 {
					Anum[m2]++
					break
				}
				if A[k]-d >= 0 {
					Anum[m2]++
				}
				d++
			}
		}

	}

	for m = 0; m < N; m++ {
		if m == N-1 {
			fmt.Printf("%d", A[m])
		} else {
			fmt.Printf("%d ", A[m])
		}
	}
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
