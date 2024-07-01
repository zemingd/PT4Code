package main

import (
	"bufio"
	"fmt"
	"os"
	"reflect"
	"strconv"
)

const (
	maxBufSize = 1024 * 1024
)

var (
	sc = func() *bufio.Scanner {
		sc := bufio.NewScanner(os.Stdin)
		buf := make([]byte, 1)
		sc.Buffer(buf, maxBufSize)
		sc.Split(bufio.ScanWords)
		return sc
	}()
	out = bufio.NewWriter(os.Stdout)
)

func solve(n int64, as []int64) int64 {
	aas := make(map[int64]int64)
	for i, a := range as {
		v := a - int64(i)
		c, ok := aas[v]
		if !ok {
			aas[v] = 1
		} else {
			aas[v] = c + 1
		}
	}
	ret := int64(0)
	for i, a := range as {
		v := a + int64(i)
		c, ok := aas[-v]
		if ok {
			ret += c
		}
	}
	return ret
}

func main() {
	defer out.Flush()

	n := nextInt()
	as := nextInts(n)
	res := solve(n, as)
	fmt.Fprintln(out, res)
}

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextStringAsBytes() []byte {
	sc.Scan()
	return []byte(sc.Text())
}

func nextInt() int64 {
	a, _ := strconv.ParseInt(next(), 10, 64)
	return a
}

func nextFloat() float64 {
	a, _ := strconv.ParseFloat(next(), 64)
	return a
}

func nextInts(n int64) []int64 {
	ret := make([]int64, n)
	for i := int64(0); i < n; i++ {
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
