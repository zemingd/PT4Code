package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	list := getStdinIntArr()
	N := list[0]
	K := list[1]
	A := getStdinIntArr()

	for idx,val := range A {
		A[idx] = val - 1
	}
	Mati := make([]int, N)	// 町１からの距離
	for i:=0 ; i<N ; i++ {
		Mati[i] = -1
	}

	// 町探索
	prev := 0
	now := 0 
	for i:=0 ; i<K ; i++ {
		prev = now
		now = A[now]
		if Mati[now] == -1 {
			Mati[now] = i
		} else {
			// ループした
			loop := Mati[prev] - Mati[now] + 1
			if loop <= 0 {
				break
			}
			rem := (K-i-1) % loop
			for j:=0 ; j<rem ; j++ {
				now = A[now]
			}
			break
		}
	}

	fmt.Printf("%d", now+1)
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
