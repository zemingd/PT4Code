package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"sort"
	"strconv"
	"strings"
)

func main() {
	scan_init()
	x := scanInt()
	max := int(2*math.Pow(10,5))
	memo := toKeys(allSosu(max))
	for i:= 0; i<len(memo); i++ {
		if memo[i] >= x {
			fmt.Println(memo[i])
			break
		}
	}
}
func toKeys (memo map[int]bool)[]int{
	k := 0
	output := make([]int, len(memo))
	for i,_ := range memo {
		output[k] = i
		k++
	}
	sort.Ints(output)
	return output
}
func allSosu(max int) map[int]bool{
	// max値までの素数群を返す
	// 計算量logmax*logmax
	output := map[int]bool{}
	furui := make([]int, max+1)
	for i:= 2; i*i<=max; i++ {
		if furui[i] > 0 {
			continue
		}
		for j:=i+i; j<=max; j += i{
			furui[j]++
		}
	}
	for i:=2; i<=max; i++ {
		if furui[i] == 0 {
			output[i] = true
		}
	}
	return output
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