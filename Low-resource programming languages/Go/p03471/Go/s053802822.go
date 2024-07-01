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
	flag := false
	arr := scanIntSplit(2)
	N, Y := arr[0], arr[1]
	for i:=0; i<N; i++{
		if flag {
			break
		}
		for j:=0; j<N-i; j++{
			if flag {
				break
			}
			for k:=0; k<N-i-j; k++{
				if Y == 10000*i + 5000*j + 1000*k {
					fmt.Println(i, j, k)
					flag = true
					break
				}
			}
		}
	}
	if !flag {
		fmt.Println("-1 -1 -1")
	}
}