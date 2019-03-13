def calculate_happiness(number, curr_count)
  result = number.to_s.split("")

  curr_val = result.map { |digit| digit.to_i ** 2 }.reduce(:+)

  if curr_count == 8
    puts "Sad Number! #{curr_val}"
    return
  end

  if curr_val == 1
    puts "Happy Number! #{curr_val}"
    return
  end

  calculate_happiness(curr_val, curr_count + 1)
end
