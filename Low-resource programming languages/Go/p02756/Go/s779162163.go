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
var bufferSize = 1024 * 1024

type t struct {
	t int64
	f int64
	c byte
}

func solve(s []byte, q int64, qs []t) []byte {
	edges := make([][]byte, 2)
	edges[0] = make([]byte, 0, q)
	edges[1] = make([]byte, 0, q)
	frontIdx := 0

	reversed := false
	for _, tt := range qs {
		if tt.t == 1 {
			reversed = !reversed
			frontIdx = 1 - frontIdx
			continue
		}
		if tt.f == 1 {
			edges[frontIdx] = append(edges[frontIdx], tt.c)
		} else {
			edges[1 - frontIdx] = append(edges[1 - frontIdx], tt.c)
		}
	}

	ret := make([]byte, 0, len(s) + len(edges[0]) + len(edges[1]))
	for i := len(edges[frontIdx]) - 1; i >= 0; i-- {
		ret = append(ret, edges[frontIdx][i])
	}
	if reversed {
		for i := len(s) - 1; i >= 0; i-- {
			ret = append(ret, s[i])
		}
	} else {
		for _, b := range s  {
			ret = append(ret, b)
		}
	}
	for _, b := range edges[1 - frontIdx] {
		ret = append(ret, b)
	}
	return ret
}

func main() {
	scanBuffer := make([]byte, 1024)
	sc.Buffer(scanBuffer, bufferSize)
	sc.Split(bufio.ScanWords)
	defer out.Flush()

	s := nextStringAsBytes()
	q := nextInt()

	qs := make([]t, q)
	for i := int64(0); i < q; i++ {
		qs[i].t = nextInt()
		if qs[i].t == 2 {
			qs[i].f  = nextInt()
			qs[i].c  = nextStringAsBytes()[0]
		}
	}

	bytes := solve(s, q, qs)
	fmt.Fprintln(out, string(bytes))
}

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextStringAsBytes() []byte {
	sc.Scan()
	return sc.Bytes()
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
