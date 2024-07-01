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

func readLine() string {
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
	s := readLine()
	t := readLine()
	ans := 0
	for i,_ := range s {
		if s[i] == t[i] {ans++}
	}
	fmt.Println(ans)
}