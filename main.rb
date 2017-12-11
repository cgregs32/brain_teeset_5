def start
  puts "Letters Menu"
  puts "1) your Input"
  puts "2) Exit"
  input = gets.to_i

  input === 1 ? match_check : exit

end

def match_check()
  puts "what is your input?"
  input = gets.strip
  array_match = []


  array = input.split(' ')
  array_of_highest = array.each do |word|
    mult_num = grab_most(word)
    array_match << mult_num
  end
  grab_word_wtih_most(array_match, array)
end

def grab_word_wtih_most(nums, input)

  high = 0
  highest = nums.max
  index_of = nums.index(highest)
  index_highest = input[index_of]
  handle_output(index_highest)


end


def handle_output(inp)
  puts inp
  puts "WoW, #{inp} has the highest word count!"
  puts "check again?"
  puts "1) yes"
  puts "2) no"
  input = gets.to_i

  input === 1 ? start : exit
end

def grab_most(word)
  list_highest = []
  highest = 0
  highest_letter = ''
  each_word = word.split('')

  each_word.each_with_index do |let, i|
    count_num = word.count(let)
    if count_num > highest
      highest = count_num
      highest_letter = let
    end

  end
  list_highest.push(highest)
  return list_highest
end

start


#find the word with the highest repeat of letters
#if same amout of repeated lettrers return both
# Good, food
