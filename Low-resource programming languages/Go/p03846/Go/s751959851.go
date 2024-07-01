package main

import (
	"bufio"
	"fmt"
	"os"
	"reflect"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)
var out = bufio.NewWriter(os.Stdout)

func main() {
	sc.Split(bufio.ScanWords)
	defer out.Flush() // !!!!coution!!!! you must use Fprint(out, ) not Print()
	/* --- code ---*/
	// nが偶数なら1,3,5,...n-1までが2つずつ
	// nが奇数なら0がひとつ、2,4,6,...n-1までが2つずつ
	// 出力は数え方なので同じ数の者同士を入れ替えるので(n//2)**2
	// Goで無理やり実装する感じの雑感。。。こういうのはPythonのがサクッと作れる。。。
	n := nextInt()
	arr := nextInts(n)
	sort.Ints(arr)
	compare_arr := make([]int, n)
	if n%2 == 0 {
		i := 1
		for j := 0; j < n/2; j++ {
			compare_arr[j], compare_arr[j+1] = i, i
			i += 2
		}
	} else {
		i := 2
		for j := 1; j < n/2+1; j++ {
			compare_arr[j], compare_arr[j+1] = i, i
			i += 2
		}
	}
	flag := true
	for i := 0; i < n; i++ {
		if compare_arr[i] != arr[i] {
			flag = false
		}
	}
	if !flag {
		fmt.Fprint(out, compare_arr[100000000000000000])
		return
	}
	fmt.Fprint(out, (n/2)*(n/2))
}

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}

func nextFloat64() float64 {
	a, _ := strconv.ParseFloat(next(), 64)
	return a
}

func nextInts(n int) []int {
	ret := make([]int, n)
	for i := 0; i < n; i++ {
		ret[i] = nextInt()
	}
	return ret
}
func nextFloats(n int) []float64 {
	ret := make([]float64, n)
	for i := 0; i < n; i++ {
		ret[i] = nextFloat64()
	}
	return ret
}
func nextStrings(n int) []string {
	ret := make([]string, n)
	for i := 0; i < n; i++ {
		ret[i] = next()
	}
	return ret
}

func PrintOut(src interface{}, joinner string) {
	switch reflect.TypeOf(src).Kind() {
	case reflect.Slice:
		s := reflect.ValueOf(src)
		for idx := 0; idx < s.Len(); idx++ {
			fmt.Fprintf(out, "%v", s.Index(idx))
			if idx < s.Len()-1 {
				fmt.Fprintf(out, "%s", joinner)
			} else {
				fmt.Fprintln(out)
			}
		}
	default:
		fmt.Fprintln(out, "fuck")
	}
}
