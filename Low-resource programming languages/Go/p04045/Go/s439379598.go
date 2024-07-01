package main
import (
  "fmt"
  "bufio"
  "os"
  "strconv"
  "strings"
  "sort"
)

func main() {
  solve()
}

func solve() {
  input := bufio.NewScanner(os.Stdin)
  input.Scan()
  N, _ := strconv.Atoi(strings.Split(input.Text(), " ")[0])
  input.Scan()
  
  var a []int
  for _, v := range strings.Split(input.Text(), " ") {
    p, _ := strconv.Atoi(string(v))
    a = append(a, p)
  }
  
  sort.Sort(sort.IntSlice(a))
  for i:=N; i <= 10*N; i++ {
    var f bool
    for _, v := range strconv.Itoa(i) {
      p, _ := strconv.Atoi(string(v))
      f = bSearch(a, p)
      if f {
        break
      }
    }
    
    if !f {
      fmt.Println(i)
      break 
    }
  }
}

func bSearch(a []int, n int) bool {
	if len(a) == 0 {
		return false
	}

	l := 0
	r := len(a) - 1
	m := (l + r) / 2

	for r >= l {
		if a[m] == n {
			return true
		} else if a[m] > n {
			r = m - 1
			m = (l + r) / 2
		} else {
			l = m + 1
			m = (l + r) / 2
		}
	}
	return false
}
  