package main

import("fmt")

func main(){
  var n int
  fmt.Scan(&n)
  
  a:=[]int{}
  for i:=1; i<10; i++{
    for j:=1; j<10; j++{
      a=append(a,i*j)
    }
  }
  
  if contains(a,n)==true{
    fmt.Print("Yes")
  }else {
    fmt.Print("No")
  }
} 

func contains(s []int, e int) bool {
    for _, a := range s {
        if a == e {
            return true
        }
    }
    return false
}

