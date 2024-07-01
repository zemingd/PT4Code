package main

import (
  "fmt"
  "sort"
)

func main() {
	var a,b,c,d,e int
  fmt.Scan(&a)
  fmt.Scan(&b)
  fmt.Scan(&c)
  fmt.Scan(&d)
  fmt.Scan(&e)

  k := make([]int, 5)
  n := make([]int, 5)
  t := make([]int, 120)
  j := 0
  
  k[0]=a
  k[1]=b
  k[2]=c
  k[3]=d
  k[4]=e
  
  sort.Ints(k)
  
  for j:=0; j<5; j++ {
    n[0] = k[j]
    for jj:=0; jj<5; jj++ {
      if jj != j {
        n[1] = k[jj]
      }
      for jjj:=0; jjj<5; jjj++ {
        if jjj != jj && jjj!= j {
          n[2] = k[jjj]
        }
        for jjjj:=0; jjjj<5; jjjj++ {
          if jjjj != jjj && jjjj != jj && jjjj != j{
            n[3] = k[jjjj]
          }
          for jjjjj:=0; jjjjj<5; jjjjj++ {
            if jjjjj != jjjj && jjjjj != jjj && jjjjj != jj && jjjjj != j {
              n[4] =k[jjjjj]
              for i:=0; i<5; i++ {
    		    t[j] += n[i]
        	    if i != 4 && t[j] % 10 !=0 {
          		  t[j] += 10 - ( t[j] % 10 )
                }
              }
              j++
            }
          }
        }
      }
    }
  }

  sort.Ints(j)
  
  fmt.Println(j[0])
  
}

