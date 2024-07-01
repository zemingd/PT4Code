package main

import (
       "bufio"
       "fmt"
       "os"
       "strconv"
       "sort"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
     sc.Scan()
     i, e := strconv.Atoi(sc.Text())
     if e != nil {
     	panic(e)
     }
     return i
}

func MaxIntSlice(v []int) int {
  sort.Ints(v)
  return v[len(v)-1]
}

func main() {
     sc.Split(bufio.ScanWords)
     k := nextInt()
     n := nextInt()

     a := make([]int, n)
     b := make([]int, n)

     for i:=0; i<n; i++ {
     	 a[i] = nextInt()
     }

     b[0] = a[0] + (k - a[n-1])
     for i:=1; i<n; i++ {
     	 b[i] = a[i] - a[i-1]
     }

     max := MaxIntSlice(b)
     fmt.Println(k - max)
}     