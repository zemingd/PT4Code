package main 

import ("fmt")

func main() {
  var(
    a string
    count = 0
  )
  fmt.Scan(&a)
  for i := 0;i <= 2; i++{
    if a[i]=="1"{
      count++
    }
  }
  fmt.Println(count)
  
}









