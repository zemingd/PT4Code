package main

import (
  "fmt"
)

func main(){
  var L int
  var R int
  var bef_number_mod int
  var aft_number_mod int
  fmt.Scan(&L)
  fmt.Scan(&R)

  aft_number_mod = L * R
  
  for i:=L; i <= R; i++ {
    for n:=L+1; n <= R; n++ {
      bef_number_mod = (i * n) % 2019
      if(aft_number_mod > bef_number_mod){
      	aft_number_mod = bef_number_mod
        if(aft_number_mod == 0){
          break
        }
      }
    }
  }
  fmt.Print(aft_number_mod)
}