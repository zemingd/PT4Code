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
	list2 := getStdinIntArr64()
	list3 := getStdinIntArr64()
	A := list1[0]
	V := list1[1]
	B := list2[0]
	W := list2[1]
	T := list3[0]

	var v int64 = 0
	var w int64 = 0

	if A < B {
		v = V
		w = W
	} else {
		v = -V
		w = -W
	}

	var i int64 = 0
	for i = 0; i < T; i++ {
		A += v
		B += w
		if A == B {
			fmt.Printf("Yes\n")
			return
		}
	}

	//l := lcm(V, W)
	/*
		if A+T* > 0 {
			fmt.Printf("Yes\n")
			return
		}
	*/
	fmt.Printf("No\n")
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

func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}
func lcm(a, b int) int {
	return a * b / gcd(a, b)
}
