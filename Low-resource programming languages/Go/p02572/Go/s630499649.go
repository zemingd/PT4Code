package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)
var mod int64
func main() {
	scan_init()
	n := scanInt()
	mod = int64(math.Pow(10,9)+7)
	a := make([]int64, n)
	for i:= 0; i<n; i++ {
		a[i] = int64(scanInt())
	}
	var sum int64
	sum = 0
	rusekiOne := make([]int64, n)
	for i:= 0; i<n-1; i++ {
		rusekiOne[i+1] = ((rusekiOne[i] + a[i+1]))%mod
	}
	sum += (rusekiOne[n-1]*a[0])%mod
	for i:=1; i<n-1; i++ {

		get := ((rusekiOne[n-1]%mod+mod) - (rusekiOne[i])%mod)%mod
		// fmt.Println(get,"確認")
		sum += a[i]*get % mod
	}
	fmt.Println(sum%mod)


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