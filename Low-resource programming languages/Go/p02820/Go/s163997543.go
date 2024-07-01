package main
import "fmt"

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	var r, s, p int
	fmt.Scan(&r, &s, &p)

	var t string
	fmt.Scan(&t)

	output := ""
	points := 0
	for i := 1; i <= n; i++ {
		if i <= k {
			if t[i-1:i] == "r" {
				output = output + "p"
				points += p
			} else if t[i-1:i] == "p" {
				output = output + "s"
				points += s
			} else if t[i-1:i] == "s" {
				output = output + "r"
				points += r
			}
		} else {
			if t[i-1:i] == "r" {
				if output[i-k-1:i-k] == "p" {
					output = output + "r"
				} else {
					output = output + "p"
					points += p
				}
			} else if t[i-1:i] == "p" {
				if output[i-k-1:i-k] == "s" {
					output = output + "p"
				} else {
					output = output + "s"
					points += s
				}
			} else if t[i-1:i] == "s" {
				if output[i-k-1:i-k] == "r" {
					output = output + "s"
				} else {
					output = output + "r"
					points += r
				}
			}
		}
	}
	fmt.Println(points)
}