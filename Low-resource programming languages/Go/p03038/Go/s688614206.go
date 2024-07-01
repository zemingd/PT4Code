package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func scanInt() int {
	num, _ := strconv.Atoi(scanString())
	return num
}

func scanString() string {
	sc.Scan()
	return sc.Text()
}

func scanInts(n int) []int {
	sl := make([]int, n)
	for i := range sl {
		sl[i] = scanInt()
	}
	return sl
}

func scanStrings(n int) []string {
	sl := make([]string, n)
	for i := range sl {
		sl[i] = scanString()
	}
	return sl
}

func init() {
	sc.Split(bufio.ScanWords)
}

type changeType struct {
  B int
  C int
}

type changeTypeList []changeType

func (c changeTypeList) Len() int {
  return len(c)
}

func (c changeTypeList) Less(i, j int) bool {
  return c[i].C > c[j].C
}

func (c changeTypeList) Swap(i, j int) {
  c[i], c[j] = c[j], c[i]
}

func main() {
	N, M := scanInt(), scanInt()
	A := scanInts(N)
	sort.Ints(A)

  changes := changeTypeList{}
  for i := 0; i < M; i++ {
    B, C := scanInt(), scanInt()
    changes = append(changes, changeType{B: B, C: C})
  }

  sort.Sort(changes)
  //fmt.Printf("%v", changes)

  //fmt.Printf("%v", A)
	for i := 0; i < M; i++ {
		//idx := sort.Search(len(A), func(k int) bool { return A[k] >= changes[i].C }) - 1

    tmp_idx := 0
		for j := 0; j < changes[i].B && tmp_idx < N; tmp_idx++ {
      if (A[tmp_idx] < changes[i].C){
        A[tmp_idx] = changes[i].C
        j++
      }
		}
    //fmt.Printf("%v", A)
	}
	//fmt.Printf("%v", A)
	sum := 0
	for _, num := range A {
		sum += num
	}
	fmt.Println(sum)
}
