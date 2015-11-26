module ApplicationHelper
  def pretty(float)
    whole = float.to_i
    remainder = float - whole
    if remainder < 0.1
      "#{whole}"
    else
      remainder_fraction = remainder.to_s.to_r
      string = "<div class='fraction-display'>"
      string += "#{whole} " if whole != 0
      string += "<span class='fraction'>#{remainder_fraction}</span>"
      string += " <span class='float'>(#{float})</span></div>"
    end
  end
end
