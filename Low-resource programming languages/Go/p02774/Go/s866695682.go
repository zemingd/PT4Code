package main
 
import (
  "fmt"
  "os"
  "bufio"
  "strconv"
  "sort"
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

func main() {
  sc.Split(bufio.ScanWords)
  n := nextInt()
  k := nextInt()
  a := make([]int, n)
  for i := range a {
    a[i] = nextInt()
  }

  var ans []int
  for i := 0; i < n - 1; i++ {
    for j := i + 1; j < n; j++ {
      ans = append(ans, a[i] * a[j])
    }
  }
  
  sort.Ints(ans)
  fmt.Println(ans[k-1])
}