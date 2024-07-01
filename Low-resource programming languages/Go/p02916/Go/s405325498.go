package main

import (
	"fmt"
	"os"
	"bufio"
	"strconv"
	"strings"
)

const BufSize = 200100
var read = bufio.NewReaderSize(os.Stdin, BufSize)

func readLine() string {
	var buf []byte
	l,_,_ := read.ReadLine()
	buf = append(buf,l...)
	return string(buf)
}

func readInt(r ...*int64) {
	l := strings.Fields(readLine())
	for i,v := range l {
		*r[i],_ = strconv.ParseInt(v,10,64)
	}
	return
}
func readIntArray() []int64 {
	l := strings.Fields(readLine())
	ret := make([]int64,len(l))
	for i,v := range l {
		ret[i],_ = strconv.ParseInt(v,10,64)
	}
	return ret
}
func main() {
	var n int64
	readInt(&n)
	a := readIntArray()
	b := readIntArray()
	c := readIntArray()
	prev := 0
	ans := 0
	for _,v := range a {
		ans += b[v-1]
		if prev == v-1 {
			ans += c[prev-1]
		}
		prev = v
	}
	fmt.Printf("%d\n",ans)
}