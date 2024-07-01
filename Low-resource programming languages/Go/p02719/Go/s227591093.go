package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"math"
)

var (
	in = bufio.NewScanner(os.Stdin)
)

func init() {
	in.Buffer([]byte{}, math.MaxInt64)
	in.Split(bufio.ScanWords)
}
func main() {
	a := readInt64Slice(2)
	n := a[0]
	k := a[1]
	ans := int64(0)
	l := n % k
	r := k-(n%k)
	if l > r {
		ans = r
	}else{
		ans = l
	}
	//if n > k {
	//	tmp := n % k
	//	if tmp == 0 {
	//		ans = 0
	//	} else {
	//		ans = k - tmp
	//	}
	//
	//} else {
	//	ans = n
	//}
	fmt.Println(ans)
}

func readInt64Slice(n int) []int64 {
	line := readStringSlice(n)
	slice := make([]int64, 0, len(line))
	for _, tmp := range line {
		val, err := strconv.ParseInt(tmp, 10, 64)
		if err != nil {
			fmt.Println(err)
			os.Exit(1)
		}
		slice = append(slice, val)
	}
	return slice
}
func readFloat64Slice(n int) []float64 {
	line := readStringSlice(n)
	slice := make([]float64, 0, len(line))
	for _, tmp := range line {
		val, err := strconv.ParseFloat(tmp, 64)
		if err != nil {
			fmt.Println(err)
			os.Exit(1)
		}
		slice = append(slice, val)

	}
	return slice
}
func readString() string {
	in.Scan()
	return in.Text()

}
func readStringSlice(n int) []string {
	s := make([]string, n)
	for i := 0; i < n; i++ {
		s[i] = readString()
	}
	return s
}
func dump(value ...interface{}) {
	for _, v := range value {
		fmt.Printf("%#v\n", v)
	}
}