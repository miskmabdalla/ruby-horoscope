# ask for user input and store it in a variable
puts "Enter your birthday (dd.mm):"
birthday = gets.chomp

# determine the user's zodiac sign and store it in a variable
zodiac_sign = nil

# Parse the date to get day and month as integers
if birthday.match(/^\d{2}\.\d{2}$/)
  day, month = birthday.split('.').map(&:to_i)
  
  case month
  when 1  # January
    if day >= 20
      zodiac_sign = "Aquarius"
    else
      zodiac_sign = "Capricorn"
    end
  when 2  # February
    if day >= 19
      zodiac_sign = "Pisces"
    else
      zodiac_sign = "Aquarius"
    end
  when 3  # March
    if day >= 21
      zodiac_sign = "Aries"
    else
      zodiac_sign = "Pisces"
    end
  when 4  # April
    if day >= 20
      zodiac_sign = "Taurus"
    else
      zodiac_sign = "Aries"
    end
  when 5  # May
    if day >= 21
      zodiac_sign = "Gemini"
    else
      zodiac_sign = "Taurus"
    end
  when 6  # June
    if day >= 22
      zodiac_sign = "Cancer"
    else
      zodiac_sign = "Gemini"
    end
  when 7  # July
    if day >= 23
      zodiac_sign = "Leo"
    else
      zodiac_sign = "Cancer"
    end
  when 8  # August
    if day >= 23
      zodiac_sign = "Virgo"
    else
      zodiac_sign = "Leo"
    end
  when 9  # September
    if day >= 23
      zodiac_sign = "Libra"
    else
      zodiac_sign = "Virgo"
    end
  when 10  # October
    if day >= 24
      zodiac_sign = "Scorpio"
    else
      zodiac_sign = "Libra"
    end
  when 11  # November
    if day >= 22
      zodiac_sign = "Sagittarius"
    else
      zodiac_sign = "Scorpio"
    end
  when 12  # December
    if day >= 22
      zodiac_sign = "Capricorn"
    else
      zodiac_sign = "Sagittarius"
    end
  else
    zodiac_sign = "Invalid month"
  end
else
  zodiac_sign = "Invalid date format"
end

# Print the result
if zodiac_sign == "Invalid month"
  puts "Invalid month. Please use dd.mm format with valid month (01-12)."
elsif zodiac_sign == "Invalid date format"
  puts "Invalid date format. Please use dd.mm format (e.g., 23.12)."
else
  puts "Your zodiac sign is #{zodiac_sign}."
  horoscope_statements = [
    "Today is a perfect day to start something new!",
    "The stars are aligned in your favor today.",
    "You might encounter an unexpected opportunity.",
    "A chance meeting could change your perspective.",
    "Trust your intuition - it's stronger than usual today.",
    "Focus on communication and relationships today.",
    "Your creativity is at its peak right now.",
    "Financial matters require careful attention today.",
    "Take time for self-reflection and inner peace.",
    "Adventure awaits those who are brave enough to seek it.",
    "Your hard work is about to pay off soon.",
    "Someone from your past might reach out today.",
    "A small act of kindness will make a big difference.",
    "Today is ideal for making important decisions.",
    "Your energy is contagious - spread positivity!"
  ]
  
  # Pick a random horoscope statement
  daily_horoscope = horoscope_statements.sample
  
  puts "Your horoscope today is: #{daily_horoscope}"
end