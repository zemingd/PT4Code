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

func main(){
	var N, M, ans int
	fmt.Scan(&N, &M)
	like_list := make([]int, M)
	for i:=0; i<N; i++ {
		sc.Scan()
		input := strings.Split(sc.Text(), " ")
		for i, v := range input {
			vn, _ := strconv.Atoi(v)
			if i!=0 {
				like_list[vn-1]++
			}
		}
	}
	for _, v := range like_list {
		if v == N {
			ans++
		}
	}
	fmt.Println(ans)
}