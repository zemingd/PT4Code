package main
import(
  "fmt"
)

func main(){
  var s string
  fmt.Scanf("%s",&s)
  if s == 'SUN' {
    fmt.Print("7")
  } else if s == 'MON' {
    fmt.Print("6")
  } else if s == 'TUE' {
    fmt.Print("5")
  } else if s == 'WED' {
    fmt.Print("4")
  } else if s == 'THU' {
    fmt.Print("3")
  } else if s == 'FRI' {
    fmt.Print("2")
  } else if s == 'SAT' {
    fmt.Print("1")
  }
}