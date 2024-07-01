package main

import (
	"fmt"
	"os"
	"strconv"
	"bufio"
	"strings"
)

// define
var (
	sc = bufio.NewScanner(os.Stdin)
)

func scanIntLine(len int) []int{
	arr := make([]int, len)
	for i:=0; i<len; i++{
		sc.Scan()
		tmp, err := strconv.Atoi(sc.Text())
		if err == nil{
			arr[i] = tmp
		}
	}
	return arr
}

func scanStringLine(len int) []string{
	arr := make([]string, len)
	for i:=0; i<len; i++{
		sc.Scan()
		arr[i] = sc.Text()
	}
	return arr
}

func scanIntSplit(len int) []int{
	arr := make([]int, len)
	sc.Scan()
	for i, v := range strings.Split(sc.Text(), " "){
		tmp, err := strconv.Atoi(v)
		if err == nil{
			arr[i] = tmp
		}
	}
	return arr
}

func main(){
	arr := scanIntLine(4)
	A, B, C, X := arr[0], arr[1], arr[2], arr[3]
	ans := 0
	for a:=0; a<=A; a++{
		if X < 500*a {
			break
		}
		for b:=0; b<=B; b++{
			if X < 100*b {
				break
			}
			for c:=0; c<=C; c++{
				if X == 500*a+100*b+50*c {
					ans++
					break
				}
			}
		}
	}
	fmt.Println(ans)
}