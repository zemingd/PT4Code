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
 
	var a uint64 = 0
	var b uint64 = 0
	var v uint64 = 0
	var w uint64 = 0
	var t uint64 = 0
	a = uint64(A)
	b = uint64(B)
	v = uint64(V)
	w = uint64(W)
	t = uint64(T)
 
	/*
		if A < B {
			v = V
			w = W
		} else {
			v = -V
			w = -W
		}
	*/
	var acnt uint64 = 0
	var bcnt uint64 = 0
	var i1 uint64 = 0
	var i2 uint64 = 0
	var l uint64 = 0
	//var cnt1 uint64 = 0
	//var cnt2 uint64 = 0
		l = lcm(v, w)
	//cnt1 = l / v
	//cnt2 = l / w
 
	if A < B {
		for i1 <= t && i2 <= t {
			acnt += v
			bcnt += w
			acnt %= l
			bcnt %= l
			if a+acnt == b+bcnt {
				fmt.Printf("YES\n")
				return
			}
			i1++
			i2++
		}
	} else {
		b = a - b
		a = 0
		for i1 <= t && i2 <= t {
			acnt += v
			bcnt += w
			acnt %= l
			bcnt %= l
			if a+acnt == b+bcnt {
				fmt.Printf("YES\n")
				return
			}
			i1++
			i2++
		}
	}
 
	//l := lcm(V, W)
	/*
		if A+T* > 0 {
			fmt.Printf("Yes\n")
			return
		}
	*/
	fmt.Printf("NO\n")





	/*
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
		for i = 0; i <= T; i++ {
			Abig.Add(Abig, Vbig)
			Bbig.Add(Bbig, Wbig)
			if Abig.Cmp(Bbig) == 0 {
				fmt.Printf("YES\n")
				return
			}
		}
	} else {
		for i = 0; i <= T; i++ {
			Abig.Sub(Abig, Vbig)
			Bbig.Sub(Bbig, Wbig)
			if Abig.Cmp(Bbig) == 0 {
				fmt.Printf("YES\n")
				return
			}
		}
	}
	fmt.Printf("NO\n")
	*/
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

func gcd(a, b int64) int64 {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}
func lcm(a, b int64) int64 {
	return a * b / gcd(a, b)
}
