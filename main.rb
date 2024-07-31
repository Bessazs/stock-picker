def stock_picker(array)
  days = [0, 0]
  profit = 0
  array.each do |number|
    array.each do |proxnumber|
      unless (proxnumber - number).positive? && profit < proxnumber - number && number < proxnumber && array.find_index(proxnumber) > array.find_index(number)
        next
      end

      profit = proxnumber - number
      days[0] = array.find_index(number)
      days[1] = array.find_index(proxnumber)
    end
  end
  days
end
