# Calculate a Grade

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def get_grade (num)
    if num >= 90
        return "A"
    elsif 90 > num  && num >= 80
        return "B"
    elsif 80 > num && num >= 70
        return "C"
    elsif 70 > num && num >= 60
        return "D"
    else 
        return "F"
    end
end