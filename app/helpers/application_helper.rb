module ApplicationHelper
  def pretty(float)
    return '--' unless float
    whole = float.to_i
    remainder = float - whole
    if remainder < 0.1
      "#{whole}"
    else
      remainder_fraction = pretty_remainder_fraction(remainder)
      string = "<div class='fraction-display'>"
      string += "#{whole} " if whole != 0
      string += "<span class='fraction'>#{remainder_fraction}</span>"
      string += " <span class='float'>(#{float})</span></div>"
    end
  end

  def pretty_remainder_fraction(remainder)
    if remainder == 0.33
      return "1/3"
    elsif remainder == 0.66
      return "2/3"
    else
      return remainder.to_s.to_r
    end
  end
end
