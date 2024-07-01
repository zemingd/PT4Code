package main

import (
	"bufio"
	"fmt"
	"math/big"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewReaderSize(os.Stdin, 1024*1024*10)

func main() {
	list1 := getStdinIntArr64()
	list2 := getStdinIntArr64()
	list3 := getStdinIntArr64()
	A := list1[0]
	V := list1[1]
	B := list2[0]
	W := list2[1]
	T := list3[0]

	Abig := big.NewInt(A)
	Vbig := big.NewInt(V)
	Bbig := big.NewInt(B)
	Wbig := big.NewInt(W)

	var i int64 = 0
	if A < B {
		for i = 0; i < T; i++ {
			Abig.Add(Abig, Vbig)
			Bbig.Add(Bbig, Wbig)
			if Abig.Cmp(Bbig) == 0 {
				fmt.Printf("YES\n")
				return
			}
		}
	} else {
		for i = 0; i < T; i++ {
			Abig.Sub(Abig, Vbig)
			Bbig.Sub(Bbig, Wbig)
			if Abig.Cmp(Bbig) == 0 {
				fmt.Printf("YES\n")
				return
			}
		}
	}
	fmt.Printf("NO\n")
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

func gcd(a, b uint64) uint64 {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}
func lcm(a, b uint64) uint64 {
	return a * b / gcd(a, b)
}
