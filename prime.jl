# prime is a function which takes an integer as an arguement and calculates the prime numbers up to that number.
import Dates


function prime(num)
    k = 0
    for i in 2:num
        for j in 2:i
            if i % j == 0
                break
            end
            if i == j + 1
               k = k + 1
            end
        end
    end
    println(k)
end

function primecalc(ma)
    # get current time in milliseconds
    start = Dates.now()
    # call the function
    prime(ma)
    # get current time in milliseconds
    finish = Dates.now()
    # print the time taken
    print(finish - start)
end