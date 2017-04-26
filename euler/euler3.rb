require "benchmark"

def largestPrimeFactor(number)
    squared_number = Math.sqrt(number).round
    squared_range = (2..squared_number).to_a
    largest_factor = number

    squared_range.each do |n|
        break if largest_factor <= n
        largest_factor /= n while (largest_factor > n && largest_factor % n == 0)
    end
    largest_factor
end

time = Benchmark.realtime do
    print largestPrimeFactor(600851475143)
end
puts " found in #{time * 1000} milliseconds"