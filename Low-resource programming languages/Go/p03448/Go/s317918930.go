package main

import "fmt"
import "bufio"
import "os"
import "strconv"

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
  var a,b,c,x int
  
  sc.Split(bufio.ScanWords)
  a = nextInt() // 500
  b = nextInt() // 100
  c = nextInt() // 50
  x = nextInt()
  
  cnt:=0
  
  var i_max, j_max, k_max int

  if a > x/500 {
    i_max = x/500
  } else {
    i_max = a
  }
  if b > x/100 {
    j_max = x/100
  } else {
    j_max = b
  }
  if c > x/50 {
    k_max = x/50
  } else {
    k_max = c
  }
  
  // fmt.Print("%d %d %d", i_max, j_max, k_max)
  
  for i:=0; i<=i_max; i++ {
    for j:=0; j<=j_max; j++ {
      for k:=0; k<=k_max; k++ {
        if i*500+j*100+k*50 == x {
          cnt++
        }
      }
    }
  }

  fmt.Print(cnt)
}