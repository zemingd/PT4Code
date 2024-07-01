package main

import (
	"bufio"
	"fmt"
	"os"
	"reflect"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)
var out = bufio.NewWriter(os.Stdout)

func main() {
	sc.Split(bufio.ScanWords)
	defer out.Flush() // !!!!coution!!!! you must use Fprint(out, ) not Print()
	/* --- code ---*/
	// 頭からみていってi-1と同じだったら次の文字をとる それぞれ1文字か2文字になるし2文字の後は必ず1文字になる
	// というのをやるだけなのに何時間かけてんだ あたまがわるいからだね

	s := []rune(next())
	ans := 0
	idx := 0
	pre := ""
	for idx < len(s) {
		if idx == len(s)-1 {
			if pre != string(s[idx]) {
				ans += 1
			}
			break
		} else if pre != string(s[idx]) {
			pre = string(s[idx])
			idx += 1
		} else {
			// if idx < len(s)-1 {
			// 	pre = string(s[idx : idx+2])
			// 	idx += 2
			// } else {
			// 	break
			// }
			pre = string(s[idx : idx+2])
			idx += 2
		}
		ans += 1
	}
	fmt.Fprintln(out, ans)
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
