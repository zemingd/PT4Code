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

func expectedValue(k float64, sum float64) float64 {
  var exp float64 = (k + sum) / 2
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
  
  sum := 0
  for i := 0; i < k; i++ {
    sum += a[i]
  }
  
  var max int = sum
  var ans float64 = expectedValue(float64(k), float64(sum))

  //隣接するk個のサイコロの目が最大の時に期待値も最大となる
  for i := k; i < n; i++ {
    sum = sum - a[i-k] + a[i]
    if sum > max {
      max = sum
      ans = expectedValue(float64(k), float64(sum))
    }
  }
  
  fmt.Printf("%.12f\n", ans)
}
