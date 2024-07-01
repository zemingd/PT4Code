package main

import (
  "fmt"
)

var n,x,y,ans int

func main() {
  fmt.Scan(&n)
  fmt.Scan(&x)
  fmt.Scan(&y)
  x--
  y--

  res := make([]int, n)

  for i:=0; i<n; i++ {
    cost := make([]int, n)
    for j:=0; j<n; j++ {
      cost[j] = -1
    }
    cost[i] = 0
    var q Queue
    q.push(i)

    for !q.empty() {
      current, _ := q.pop()

      if current-1 >= 0 && cost[current-1] == -1 {
        q.push(current-1)
        cost[current-1] = cost[current]+1
      }
      if current+1 < n && cost[current+1] == -1 {
        q.push(current+1)
        cost[current+1] = cost[current]+1
      }
      if current == x && cost[y] == -1 {
        q.push(y)
        cost[y] = cost[current]+1
      }
      if current == y && cost[x] == -1 {
        q.push(x)
        cost[x] = cost[current]+1
      }
    }
    for _, c := range cost {
      res[c]++
    }
  }

  // print ans
  for r:=1; r<n; r++ {
    fmt.Println(res[r]/2)
  }
}

// Queue ...
type Queue []int

// empty ...
func (q *Queue) empty() bool {
	return len(*q) == 0
}

// push ...
func (q *Queue) push(i int) {
	*q = append(*q, i)
}

// pop ...
func (q *Queue) pop() (int, bool) {
	if q.empty() {
		return 0, false
	} else {
		res := (*q)[0]
		*q = (*q)[1:]
		return res, true
	}
}
