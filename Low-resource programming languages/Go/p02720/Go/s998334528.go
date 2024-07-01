package main

import(
  "fmt"
  "math"
)

func main() {
  var K,count int
  fmt.Scan(&K)
  var lunlunNum int64
  var v1 float64
  var v2 int
  var tmp1, tmp10 int64
  count=0
  var i int64
  i=1
  for {
	v:=i
	tmp10 = (v%100)/10
	tmp1 =v%10
	for {
	  if v <= 9{
		count++
		break
	  }
	  v1 = math.Abs(float64(tmp10 - tmp1))
	  v2 = int(v1)
	  if (v2 <= 1) {
		v = v/10
		if v <=9 {
		  count++
		  break
		}
		tmp1 = tmp10
		tmp10 = (v%100)/10
	  } else {
		break
	  }
	}

	if count == K{
	  lunlunNum = i
	  break
	}
	i++
  }
  fmt.Println(lunlunNum)
}
