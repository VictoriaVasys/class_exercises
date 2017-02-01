## pseudocode
# ** want to do things with the first 10 digits of the cc # to make sure they relate to the last digits
# 1. Parse out the string into separate digits
# 2. Put the digits into an array as integers & pop out last digit
# 3. Iterate over the array from the end (array.reverse), multiplying every other by 2
  # if the number is > 9, split it
# 4. Sum the array with "reduce"
# 5. If (the popped number + the sum % 10) == 10, the card is valid!

puts "Enter a 16-digit account number to check whether it is valid: "
acct_num = gets.chomp
digit_1 = acct_num[0].to_i * 2
digit_2 = acct_num[1].to_i
digit_3 = acct_num[2].to_i * 2
digit_4 = acct_num[3].to_i
digit_5 = acct_num[4].to_i * 2
digit_6 = acct_num[5].to_i
digit_7 = acct_num[6].to_i * 2
digit_8 = acct_num[7].to_i
digit_9 = acct_num[8].to_i * 2
digit_10 = acct_num[9].to_i
digit_11 = acct_num[10].to_i * 2
digit_12 = acct_num[11].to_i
digit_13 = acct_num[12].to_i * 2
digit_14 = acct_num[13].to_i
digit_15 = acct_num[14].to_i * 2
check_digit = acct_num[15].to_i

if digit_1 > 9
  digit_1_a = digit_1[0]
  digit_1_b = digit_1[1]
  digit_1 = digit_1_a + digit_1_b
end

if digit_2 > 9
  digit_2_a = digit_2[0]
  digit_2_b = digit_2[1]
  digit_2 = digit_2_a + digit_2_b
end

if digit_3 > 9
  digit_3_a = digit_3[0]
  digit_3_b = digit_3[1]
  digit_3 = digit_3_a + digit_3_b
end

if digit_4 > 9
  digit_4_a = digit_4[0]
  digit_4_b = digit_4[1]
  digit_4 = digit_4_a + digit_4_b
end

if digit_5 > 9
  digit_5_a = digit_5[0]
  digit_5_b = digit_5[1]
  digit_5 = digit_5_a + digit_5_b
end

if digit_6 > 9
  digit_6_a = digit_6[0]
  digit_6_b = digit_6[1]
  digit_6 = digit_6_a + digit_6_b
end

if digit_7 > 9
  digit_7_a = digit_7[0]
  digit_7_b = digit_7[1]
  digit_7 = digit_7_a + digit_7_b
end

if digit_8 > 9
  digit_8_a = digit_8[0]
  digit_8_b = digit_8[1]
  digit_8 = digit_8_a + digit_8_b
end

if digit_9 > 9
  digit_9_a = digit_9[0]
  digit_9_b = digit_9[1]
  digit_9 = digit_9_a + digit_9_b
end

if digit_10 > 9
  digit_10_a = digit_10[0]
  digit_10_b = digit_10[1]
  digit_10 = digit_10_a + digit_10_b
end

if digit_11 > 9
  digit_11_a = digit_11[0]
  digit_11_b = digit_11[1]
  digit_11 = digit_11_a + digit_11_b
end

if digit_12 > 9
  digit_12_a = digit_12[0]
  digit_12_b = digit_12[1]
  digit_12 = digit_12_a + digit_12_b
end

if digit_1 > 9
  digit_13_a = digit_13[0]
  digit_13_b = digit_13[1]
  digit_13 = digit_13_a + digit_13_b
end

if digit_14 > 9
  digit_14_a = digit_14[0]
  digit_14_b = digit_14[1]
  digit_14 = digit_14_a + digit_14_b
end

if digit_15 > 9
  digit_15_a = digit_15[0]
  digit_15_b = digit_15[1]
  digit_15 = digit_15_a + digit_15_b
end

sum = digit_1 + digit_2 + digit_3 + digit_4 + digit_5 + digit_6 + digit_7 + digit_8 + digit_9 + digit_10 + digit_11 + digit_12 + digit_13 + digit_14 + digit_15 + check_digit

if 10 - sum == 0 || 10 - sum == 10
  puts "The number is valid!"
else 
  puts "The number is invalid!"
end

