
func min(a int, b int) int {
	if a < b {
		return a
	}
	return b
}

func max(a int, b int) int {
	return -min(-a, -b)
}

func pow(a int, b int) int {
	return int(math.Pow(float64(a), float64(b)))
}

func sqrt(a int) float64 {
	return math.Sqrt(float64(a))
}
