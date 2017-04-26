def fibonacci(number_limit)
    sum, number_one, number_two = 0, 0, 1
    while number_two < number_limit
        sum += number_two if number_two.even?
        number_one, number_two = number_two, number_one + number_two
    end
    sum
end

puts fibonacci(4000000)

