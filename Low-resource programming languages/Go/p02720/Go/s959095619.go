package main

import(
  "fmt"
)

func main() {
  var K int
  var lunlunNum int64
  var i int64
  fmt.Scan(&K)

  q := make([]int64, 0)
  for i=1; i<=9; i++ {
	q = append(q,i)
  }
  
  for i:=1; i<K; i++ {
	if q[0]%10 == 0  {
	  q = append(q, q[0]*10 + q[0]%10)
	  q = append(q, q[0]*10 + q[0]%10 + 1)
	} else if q[0] == 9 {
	  q = append(q, q[0]*10 + q[0]%10 - 1)
	  q = append(q, q[0]*10 + q[0]%10)
	} else {
	  q = append(q, q[0]*10 + q[0]%10 - 1)
	  q = append(q, q[0]*10 + q[0]%10)
	  q = append(q, q[0]*10 + q[0]%10 + 1)
	}
	q = q[1:]
  }
  lunlunNum = q[0]
//  for i:= range q{
//	fmt.Println(q[i])
//  }



  fmt.Println(lunlunNum)
}
