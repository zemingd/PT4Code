package main
import "fmt"

func main() {
	var n, count int
	count = 0
	fmt.Scan(&n)
	a := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}
	for i := 0; i < n; i++ {
    count += count2Dividable(a[i])
  }
	fmt.Println(count)
}

func count2Dividable(n int) int {
  count := 0;
  if(n%2 == 0) {
    count = count2Dividable(n/2) + 1;
  }
  return count;
}
