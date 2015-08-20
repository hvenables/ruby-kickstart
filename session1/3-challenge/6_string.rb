# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
  to_return = ""
  string.length.times do |index|
    next if return_odds && index.even?
    next if !return_odds && index.odd?
    to_return << string[index]
  end
  to_return
end

puts odds_and_evens("abcdefghi", true)

def odds_and_even(string, return_odds)
	var = string.split(//)
	if !return_odds
		var1 = var.values_at(* var.each_index.select {|i| i.even?})
	else
		var1 = var.values_at(* var.each_index.select {|i| i.odd?})
    var1.join
  end
end

puts odds_and_even("abcdefghi", true)