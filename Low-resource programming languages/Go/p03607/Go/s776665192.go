package main

import (
   "fmt"
   "os"
   "bufio"
   "strconv"
)

const MaxBuf = 200100
var buf []byte
var sc = bufio.NewScanner(os.Stdin)

func init() {
   sc.Split(bufio.ScanWords)
   sc.Buffer(buf,MaxBuf)
}

func readString() string {
   sc.Scan()
   return sc.Text()
}

func readInt64() int64 {
   sc.Scan()
   r,_ := strconv.ParseInt(sc.Text(),10,64)
   return r
}

func readInt() int {
   sc.Scan()
   r,_ := strconv.Atoi(sc.Text())
   return r
}

func main() {
	n := readInt()
	m := make(map[int]int)
	for i := 0; i < n; i++ {
		x := readInt()
		m[x]++
	}

	ans := 0
	for _,v := range m {
		if v % 2 == 1 { ans++ }
	}
	fmt.Println(ans)
}