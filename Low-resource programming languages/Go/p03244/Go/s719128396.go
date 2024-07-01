package main

import (
	"fmt"
	"strconv"
	"os"
	"bufio"
	"strings"
)

// template start
var sc = bufio.NewScanner(os.Stdin)


func input2int() int{
	sc.Scan()
	num , _ := strconv.Atoi(sc.Text())
	return num
}

func input2intarr(n int) []int{
	sc.Scan()
	in := strings.Split(sc.Text(), " ")
	out := make([]int, n)
	for i:=0; i<n; i++{
		out[i], _ = strconv.Atoi(in[i])
	}
	return out
}
// template end

func main(){
	var buf = make([]byte, 10000)
	sc.Buffer(buf, 1000000)
	var n = input2int()
	var arr = input2intarr(n)
	var even = make(map[int]int, n/2)
	var odd = make(map[int]int, n/2)
	for i:=0; i<n; i++{
		if i%2 == 0{
			even[arr[i]]++
		} else {
			odd[arr[i]]++
		}
	}
	var e_max, o_max, e_k, o_k int
	for k, v := range(even){
		if v > e_max{
			e_k, e_max = k, v
		}
	}
	for k, v := range(odd){
		if v > o_max{
			o_k, o_max = k, v
		}
	}
	if e_k == o_k{
		if e_max == o_max{
			// fmt.Println(n/2)
			o_max = 0
		} else if e_max > o_max{
			o_max = 0
			odd[o_k] = 0
			for k, v := range(odd){
				if v > o_max{
					o_k, o_max = k, v
				}
			}
		} else {
			e_max = 0
			even[e_k] = 0
			for k, v := range(even){
				if v > o_max{
					e_k, e_max = k, v
				}
			}
		}
	}
	fmt.Println(n - (e_max + o_max))
}