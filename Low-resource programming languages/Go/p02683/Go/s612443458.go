package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	list := getStdinIntArr()
	N := list[0]
	M := list[1]
	X := list[2]
	C := make([]int, N)
	A := make([][]int, N)
	for i := 0; i < N; i++ {
		A[i] = make([]int, M)
	}

	for i:=0 ; i<N ; i++ {
		list2 := getStdinIntArr()
		C[i] = list2[0]
		for j:=0 ; j<M ; j++ {
			A[i][j] = list2[j+1]
		}
	}

	maxBit := (1 << N) - 1
	moneyMin := math.MaxInt32
	for bit := 1; bit <= maxBit ; bit++ {
		money := 0
		AC := make([]int, M)
		for i:=0 ; i<N ; i++ {
			mask := 0
			if i==0 {
				mask = 1
			} else {
				mask = 1 << i
			}
			if (bit & mask) != 0 {
				money += C[i]
				for n:=0 ; n<M ; n++ {
					AC[n] += A[i][n]
				}
			}
		}
		flag := true
		for i:=0 ; i<M ; i++ {
			if AC[i] < X {
				flag = false
				break
			}
		}
		if flag && money < moneyMin {
			moneyMin = money
		}
	}

	if moneyMin == math.MaxInt32 {
		fmt.Printf("%d", -1)
	} else {
		fmt.Printf("%d", moneyMin)
	}

	fmt.Printf("\n")
}

func getStdin() string {
	sc.Scan()
	return sc.Text()
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
