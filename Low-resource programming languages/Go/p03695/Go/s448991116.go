package main
import "fmt"
func main() {
  var n int
  fmt.Scan(&n)
  cnt := make([]int, 8)
  var pro int
  for i := 0; i < n; i++ {
    var a int
    fmt.Scan(&a)
    if a >= 3200 {
      pro++;
    } else {
      cnt[a/400]++;
    }
  }
  ans := 0
  for _, x := range cnt {
    if x != 0 {
      ans++;
    }
  }
  if ans == 0 {
    fmt.Printf("1 %d\n", pro)
  } else {
    fmt.Printf("%d %d\n", ans, ans + pro)
  }
}