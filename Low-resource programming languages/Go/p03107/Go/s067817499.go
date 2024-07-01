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
	memo map[string]int
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

func maxInt(a, b int) int {
	if a>b {
		return a
	}
	return b
}

func check(pattern string) int{
	if val, ok := memo[pattern]; ok {
		return val
	}
	len_p := len(pattern)
	if len_p < 2 {
		return 0
	}
	max := 0
	for i:=0; i<len_p-1; i++ {
		if pattern[i] != pattern[i+1] {
			if len_p == 2 {
				max = maxInt(max, 2)
			} else if i==0 {
				max = maxInt(max, check(pattern[i+2:])+2)
			} else if i+2==len_p {
				max = maxInt(max, check(pattern[:i])+2)
			} else {
				max = maxInt(max, check(strings.Join([]string{pattern[:i], pattern[i+2:]}, ""))+2)
			}
		}
	}
	memo[pattern] = max
	return max
}

func main(){
	buf := make([]byte, 0)
	sc.Buffer(buf, 1000000009)
	var S string
	fmt.Scan(&S)
	memo = make(map[string]int, 100005)
	fmt.Println(check(S))
}