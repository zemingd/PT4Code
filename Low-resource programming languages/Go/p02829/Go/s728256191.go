package main

func main(){
  var i1, i2 int
  var ans = 0
  fmt.Scan(&i1)
  fmt.Scan(&i2)
  for i := 1; i < 4; i++ {
    if i1 == 1 {
      if i2 == 2 {
        ans = 3
      } else {
        ans = 2
      }
    } else if i1 == 2 {
      if i2 == 1 {
        ans = 3
      } else {
        ans = 1
      }
    } else if i1 == 3 {
      if i2 == 1 {
        ans = 2
      } else {
        ans = 1
      }
    }
}