package main
import "fmt"

func main() {
	var n, d int
  fmt.Scan(&n)
  fmt.Scan(&d)
  fmt.Println(calc(n, d))
}

func calc(n, d int) int{
  cov := (d * 2)　+ 1
  var ans int
  switch n > cov {
    case n % cov == 0:
    ans = n / cov
    case n % cov != 0:
    ans = (n / cov) + 1
  }
  switch n < cov {
    default:
    ans = 1
  }
  return ans
}

