# Solves problem 1 of the Euler project in O(N/3) time

def mult_three_and_five number
    threes, fives, sum = 3, 5, 0
    iterations = number / 3

    iterations.times do
        if fives < number && fives % 3 != 0
            sum += fives
        end
        if threes < number
            sum += threes
        end
        threes, fives = threes + 3, fives + 5
    end
    sum
end

puts mult_three_and_five(10)
puts mult_three_and_five(100)
puts mult_three_and_five(1000)
puts mult_three_and_five(10000)
puts mult_three_and_five(100000)
