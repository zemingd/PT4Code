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

func bordersInt(in_map [][]int, invalid int) [][]int{
	H, W := len(in_map), len(in_map[0])
	out_map := make([][]int, H+2)
	for h:=0; h<H+2; h++ {
		out_map[h] = make([]int, W+2)
		for w:=0; w<W+2; w++ {
			out_map[h][w] = invalid
		}
	}
	for h:=0; h<H; h++{
		for w:=0; w<W; w++{
			out_map[h+1][w+1] = in_map[h][w] 
		}
	}
	return out_map
}

func bordersString(in_map [][]string, invalid string) [][]string{
	H, W := len(in_map), len(in_map[0])
	out_map := make([][]string, H+2)
	for h:=0; h<H+2; h++ {
		out_map[h] = make([]string, W+2)
		for w:=0; w<W+2; w++ {
			out_map[h][w] = invalid
		}
	}
	for h:=0; h<H; h++{
		for w:=0; w<W; w++{
			out_map[h+1][w+1] = in_map[h][w] 
		}
	}
	return out_map
}

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

var (
	N int
	rlist []int
)

func main(){
	fmt.Scan(&N)
	rlist = make([]int, N)
	rlist = scanIntSplit(N)
	for {
		check, arg_min, min := -1, -1, 1000000009
		non_zero := 0
		r2 := make([]int, N)
		for i:=0; i<N; i++ {
			if min > rlist[i] {
				arg_min, min = i, rlist[i]
			}
		}
		for i:=0; i<N; i++ {
			if i == arg_min {
				check = rlist[i]
			} else {
				check = rlist[i] % min
			}
			if check != 0 {
				r2[non_zero] = check
				non_zero++
			}
		}
		if non_zero == 1 {
			fmt.Println(min)
			break
		}
		N = non_zero
		rlist = r2
	}
}