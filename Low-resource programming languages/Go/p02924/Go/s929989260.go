package main

import (
	"bufio"
	"os"
	"strconv"
	"strings"
	// "math"
	"fmt"
	"math/rand"
	"time"
)

var (
	sc = bufio.NewScanner(os.Stdin)
)

func main() {
	var N = nextInt()

	fmt.Println((N * (N + 1)) / 2)
}

// Input helpers
func init()  {
	rand.Seed(time.Now().UnixNano())
	buf := make([]byte, 0) //ここのサイズは何でもよさそう
	sc.Buffer(buf, 1000000009)
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func spaceLine() []string {
	sc.Scan()
	return strings.Split(sc.Text()," ")
}

func intLine() []int {
	str := spaceLine()
	buf := make([]int,len(str))
	for i,s:=range str{
		buf[i],_ = strconv.Atoi(s)
	}
	return buf
}
