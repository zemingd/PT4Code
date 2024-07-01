package main

import (
   "fmt"
   "os"
   "bufio"
   "strconv"
   "sort"
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
	s := readString()
	t := readString()

	ms := make(map[rune][]int)
	for i,c := range s { 
	    ms[c] = append(ms[c],i)
	}
	imp := false
	loop := 0
	c := -1

	for _,v := range t {
		if len(ms[v]) == 0 {
			imp = true
			break
		}
		idx := sort.SearchInts(ms[v],c+1)
		fmt.Println(idx)
		if idx == len(ms[v]) {
			loop++
			c = ms[v][0]
		} else {
			c = ms[v][idx]
		}
	}

	ans := loop * len(s) + c + 1
	if (imp) {
		fmt.Println(-1)
	} else {
		fmt.Println(ans)
	}
}