package main

import (
	"bufio"
	"os"
	"strconv"
	"fmt"
)

var ReadString func() string

func init() {
	ReadString = newReadString()
}

/*------ scan ------*/

func newReadString() func() string {
	var sc = bufio.NewScanner(os.Stdin)
	sc.Buffer(make([]byte, 1024), 2048)
	sc.Split(bufio.ScanWords)
	return func() string {
		if !sc.Scan() {
			panic("scanできなかった")
		}
		return sc.Text()
	}
}

func ReadInt64() int64 {
	i, err := strconv.ParseInt(ReadString(), 0, 64)
	if err != nil {
		fmt.Println("scanできなかった")
		panic(err.Error())
	}
	return int64(i)
}

func ReadInt() int {
	i := ReadInt64()
	return int(i)
}

func ReadIntSlice(n int) []int {
	arr := make([]int, n)
	for i := 0; i < n; i++ {
		arr[i] = ReadInt()
	}
	return arr
}

func ReadInt64Slice(n int) []int64 {
	arr := make([]int64, n)
	for i := 0; i < n; i++ {
		arr[i] = ReadInt64()
	}
	return arr
}

/*------ number util ------*/

func GetIntAbs(n int) int {
	if n < 0 {
		return -n
	}
	return n
}

func Atoi(a string) int {
	i, err := strconv.Atoi(a)
	if err != nil {
		panic(err.Error())
	}
	return i
}


func main() {
	a := ReadInt()
	b := ReadInt()
  c := ReadInt()
  ab := a + b
  ac := a + c
  bc := b + c
  if ab <= ac {
    if ab <= bc {
      fmt.Println(ab)
    } else if bc <= ac {
      fmt.Println(bc)
    }
  } else {
    fmt.Println(ac)
  }
}