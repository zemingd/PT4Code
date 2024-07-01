package main
 
import (
  "fmt"
  "os"
  "bufio"
  "strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextStr() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
    sc.Scan()
    i, e := strconv.Atoi(sc.Text())
    if e != nil {
        panic(e)
    }
    return i
}

func expectedValue(k int, sum int) float64 {
  var exp float64 = (float64(k) + float64(sum)) / 2.0
  return exp
}

func main() {
  sc.Split(bufio.ScanWords)
  n := nextInt()
  k := nextInt()
  a := make([]int, n)
  for i := range a {
    a[i] = nextInt()
  }
  
  sum, max := 0, 0
  for i := 0; i < k; i++ {
    sum += a[i]
  }
 
  //隣接するk個のサイコロの目が最大の時に期待値も最大となる
  for i := k; i < n; i++ {
    sum = sum - a[i-k] + a[i]
    if sum > max {
      max = sum
    }
  }
  fmt.Printf("%.12f\n", expectedValue(k, max))
}
