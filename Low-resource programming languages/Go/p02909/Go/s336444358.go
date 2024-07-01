package main
import fmt

func main() {
  var(
    status string
    out = []string{"Sunny", "Cloudy", "Rainy"}
  )
  fmt.Scan(&status)
  
  switch status {
    case out[0]:
        fmt.Println(out[1])
    case out[1]:
        fmt.Println(out[2])
    case out[2]:
        fmt.Println(out[0])
  }
}