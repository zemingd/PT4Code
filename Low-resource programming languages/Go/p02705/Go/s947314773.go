package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)
	A := make([]int,N-1)
	B := make([]int,N)
	for i:=range A{
		fmt.Scan(&A[i])
	}

	for i:=range B{
      if i == 0 {
        continue
      }
		count :=0
		for _,Aj:=range A{
			if Aj == i {
				count++
			} else {
				continue
			}
		}
		B[i-1] = count
	}
	for i:= range B{
		fmt.Println(B[i])
	}
}