package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

type graph struct {
	index int
	friend []int
	block map[int]bool
	count int
	Group int
}
func main() {
	scan_init()
	n := scanInt()
	m := scanInt()
	k := scanInt()
	a := make([]int, m)
	b := make([]int, m)
	c := make([]int, k)
	d := make([]int, k)
	areas := []map[int]bool{}
	graphs := make([]graph, n)
	for i:= 0; i<n; i++ {
		graphs[i].index = i
		graphs[i].friend = []int{}
		graphs[i].block = map[int]bool{}
		graphs[i].count = 0
	}
	for i:= 0; i<m; i++ {
		a[i] = scanInt() -1
		b[i] = scanInt() -1
		graphs[a[i]].friend = append(graphs[a[i]].friend, b[i])
		graphs[b[i]].friend = append(graphs[b[i]].friend, a[i])
	}
	for i:= 0; i<k; i++ {
		c[i] = scanInt() -1
		d[i] = scanInt() -1
		// graphs[c[i]].block = append(graphs[c[i]].friend, d[i])
		graphs[c[i]].block[d[i]] = true
		// graphs[d[i]].block = append(graphs[d[i]].friend, c[i])
		graphs[d[i]].block[c[i]] = true
	}
	clears := make([]bool, n)
	p := 0
	for i:= 0; i<n; i++ {
		if clears[i] {
			continue
		}
	// 	fmt.Println(areas, "area", clears)
		areas = append(areas, map[int]bool{})
		areas[p] = map[int]bool{}
		take := graphs[i]
		areas[p][i] = true
		friends := take.friend
		clears[i] = true
		graphs[i].Group = p
		stack := []int{} // ここに入れる
		stack  = append(stack, friends...)
	// 	fmt.Println(stack, "stack!!")
		for len(stack) > 0 {
			var get int
		// 	fmt.Println(stack, "stack")
			get, stack = Shift(stack)
			// fmt.Println("get!!", get, stack)
			areas[p][get] = true
			graphs[get].Group = p
			if clears[get] {
				continue
			} else {
				// ここに記入
				stack = append(stack, graphs[get].friend...)
				clears[get] = true
			}
		}
		p ++
	}
	blockCount := make([]int,n)
	for i:= 0; i<n; i++ {
		targetArea := graphs[i].Group
		for key,_ := range graphs[i].block {
			if _,ok := areas[targetArea][key]; ok {
				blockCount[i]++
			}
		}
	}
	output := make([]int, n)
	for i:= 0; i<n; i++ {
		getGraphGroup := graphs[i].Group
		getArea := areas[getGraphGroup]
		// fmt.Println("check", len(getArea), len(graphs[i].friend), blockCount[i])
		output[i] = len(getArea) - (len(graphs[i].friend)+blockCount[i]) -1
	}
	// fmt.Println(areas, clears)
	for i:= 0; i<n; i++ {
		fmt.Println(output[i])
	}
}

var sc = bufio.NewScanner(os.Stdin)

func scan_init() {
	sc.Split(bufio.ScanWords)
}
func scanInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}
func scan() string {
	sc.Scan()
	return sc.Text()
}

var rdr = bufio.NewReaderSize(os.Stdin, 200000)

func readLine() string {
	buf := make([]byte, 0, 200000)
	for {
		l, p, e := rdr.ReadLine()
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
func readLineToNumber() int {
	S := readLine()
	number, _ := strconv.Atoi(S)
	return number
}
func readLineToSlice() []string {
	S := readLine()
	list := strings.Split(S, "")
	return list
}
func readLineToNumberSlice(memo map[string]int) []int {
	// err時は-1を代入
	S := readLine()
	intList := make([]int, len(S))
	for i := 0; i < len(S); i++ {
		if val, ok := memo[string(S[i])]; ok {
			intList[i] = val
		} else {
			intList[i] = -1
		}
	}
	return intList
}

func Shift(slice []int) (int, []int)  {
	n := len(slice)
	value := slice[0]
	// Slice := []int{}
	popSlice := slice[1:n]
	return value, popSlice
}