package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

const Mod = int(1e9) + 7

func main() {
	N := ReadInt()
	As := ReadInts(N)
	ans := 0
	for i := 0; i < 60; i++ {
		cnt := 0
		for j := 0; j < N; j++ {
			if (As[j]>>i)&1 == 1 {
				cnt++
			}
		}
		v := cnt * (N - cnt) % Mod
		for j := 0; j < i; j++ {
			v = v * 2 % Mod
		}
		ans = (ans + v) % Mod
	}
	fmt.Println(ans)
}

func ReadInts(n int) []int {
	ret := make([]int, n)
	for i := 0; i < n; i++ {
		ret[i] = ReadInt()
	}
	return ret
}

var sc = bufio.NewScanner(os.Stdin)

func init()        { sc.Buffer(make([]byte, 256), 1e9); sc.Split(bufio.ScanWords) }
func Read() string { sc.Scan(); return sc.Text() }

func ReadInt() int {
	v, e := strconv.Atoi(Read())
	if e != nil {
		panic(e.Error())
	}
	return v
}
