package main

import (
  "bufio"
  "fmt"
  "os"
  "strconv"
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

func main() {
  sc.Split(bufio.ScanWords)
  n,k:= nextInt(), nextInt()
  arr:=make([]int,n)
  
  for i := 0; i < n; i++ {
	 arr[i] = nextInt()
  }
  
  z := arr[0]
  for l := 0; l < k-1; l++ {
   z = arr[z-1]   
  }
 	fmt.Println(z)


}