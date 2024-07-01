package main
 
import "fmt"
 
func main() {
	var n int
    fmt.Scan(&n)
   	t := make([]int, n+1)
    for i := 0; i < n; i++ {
        fmt.Scan(&t[i])
    }
  var output_map map[string]int :=  map[string]int{"AC":0, "WA":0, "TLE":0, "RE":0}
  
  for i, v := range t {
    switch v {
    case "AC":
      output_map["AC"] = output_map["AC"] + 1
    case "WA":
      output_map["WA"] = output_map["WA"] + 1
    case "TLE":
      output_map["TLE"] = output_map["TLE"] + 1
    case "RE":
      output_map["RE"] = output_map["RE"] + 1
    }
  }
  fmt.Sprintln("AC x ", output_map["AC"])
  fmt.Sprintln("WA x ", output_map["WA"])
  fmt.Sprintln("TLE x ", output_map["TLE"])
  fmt.Sprintln("RE x ", output_map["RE"])
}
