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

const yes = "YES"
const no = "NO"

func solve(n int, as []int) bool {
	sort.Ints(as)
	p := -1
	for _, v := range as {
		if v == p {
			return false
		}
		p = v
	}
	return true
}

func main() {
	sc.Split(bufio.ScanWords)
	defer out.Flush()

	n := nextInt()
	as := nextInts(n)
	if solve(n, as) {
		fmt.Fprintln(out, yes)
	} else {
		fmt.Fprintln(out, no)
	}
}

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextStringAsBytes(n int64) []byte {
	sc.Scan()
	return []byte(sc.Text())
}

func nextInt() int {
	a, _ := strconv.ParseInt(next(), 10, 32)
	return int(a)
}

func nextFloat() float64 {
	a, _ := strconv.ParseFloat(next(), 64)
	return a
}

func nextInts(n int) []int {
	ret := make([]int, n)
	for i := int(0); i < n; i++ {
		ret[i] = nextInt()
	}
	return ret
}

func nextFloats(n int64) []float64 {
	ret := make([]float64, n)
	for i := int64(0); i < n; i++ {
		ret[i] = nextFloat()
	}
	return ret
}
func nextStrings(n int64) []string {
	ret := make([]string, n)
	for i := int64(0); i < n; i++ {
		ret[i] = next()
	}
	return ret
}

func containStr(arr []string, target string) bool {
	for _, v := range arr {
		if v == target {
			return true
		}
	}
	return false
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
		fmt.Fprintln(out, "orz")
	}
}

// mapからkeysとvaluesを返す
func splitKeyValue(m map[interface{}]interface{}) (keys, values []interface{}) {
	switch reflect.TypeOf(m).Kind() {
	case reflect.Map:
		s := reflect.ValueOf(m)
		for _, v := range s.MapKeys() {
			keys = append(keys, v)
			values = append(values, s.MapIndex(v))
		}
	default:
		fmt.Fprintln(out, "orz")
	}
	return
}
